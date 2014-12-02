﻿
namespace wServer.networking.svrPackets
{
    public class FailurePacket : ServerPacket
    {
        public int ErrorId { get; set; }
        public string Message { get; set; }

        public override PacketID ID { get { return PacketID.Failure; } }
        public override Packet CreateInstance() { return new FailurePacket(); }

        protected override void Read(NReader rdr)
        {
            ErrorId = rdr.ReadInt32();
            Message = rdr.ReadUTF();
        }

        protected override void Write(NWriter wtr)
        {
            wtr.Write(ErrorId);
            wtr.WriteUTF(Message);
        }
    }
}
