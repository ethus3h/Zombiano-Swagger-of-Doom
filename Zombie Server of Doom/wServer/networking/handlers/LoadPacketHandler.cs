﻿using wServer.networking.cliPackets;
using wServer.networking.svrPackets;
using wServer.realm;
using wServer.realm.entities;

namespace wServer.networking.handlers
{
    class LoadPacketHandler : PacketHandlerBase<LoadPacket>
    {
        public override PacketID ID { get { return PacketID.Load; } }

        protected override void HandlePacket(Client client, LoadPacket packet)
        {
            client.Character = client.Manager.Database
                                .LoadCharacter(client.Account, packet.CharacterId);
            if (client.Character != null)
            {
                if (client.Character.Dead)
                {
                    SendFailure("Character is dead.");
                    client.Disconnect();
                }
                else
                {
                    var target = client.Manager.Worlds[client.targetWorld];
                    //Delay to let client load remote texture
                    target.Timers.Add(new WorldTimer(500, (w, t) =>
                    {
                        client.SendPacket(new CreateSuccessPacket()
                        {
                            CharacterID = client.Character.CharacterId,
                            ObjectID = target.EnterWorld(client.Player = new Player(client))
                        });
                    }));
                    client.Stage = ProtocalStage.Ready;
                }
            }
            else
            {
                SendFailure("Failed to load character.");
                client.Disconnect();
            }
        }
    }
}
