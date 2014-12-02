﻿
namespace wServer.realm.worlds
{
    public class NexusLimbo : World
    {
        public NexusLimbo()
        {
            Id = NEXUS_LIMBO;
            Name = "Nexus Tutorial";
            Background = 0;
        }

        protected override void Init()
        {
            base.FromWorldMap(typeof(RealmManager).Assembly.GetManifestResourceStream("wServer.realm.worlds.nexusLimbo.wmap"));
        }
    }
}
