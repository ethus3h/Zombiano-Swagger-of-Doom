﻿using System;

namespace wServer.networking.svrPackets
{
    public class WeatherPropertiesPacket : ServerPacket
    {
        public const int NONE = 255;
        public const int ADD_PARTICLES = 0;
        public const int REMOVE_PARTICLES = 1;
        public const int CHANGE_WEATHER = 2;
        public const int WIND_SPEED = 3;
        public const int PARTICLE_DIRECTION = 4;

        public byte _type;
        public short _particles;
        public Weather _weather;
        public float[] _windSpeed;
        public int _particleDirection; //<- = 0 ;; down = 1 ;; -> = 2
        public int _currentTime;
        public string _atmosphere;

        public WeatherPropertiesPacket()
        {
            _windSpeed = new float[2] { -1, -1 };
            _atmosphere = String.Empty;
        }

        public override PacketID ID
        {
            get { return PacketID.WeatherProperties; }
        }

        public override Packet CreateInstance()
        {
            return new WeatherPropertiesPacket();
        }

        protected override void Write(NWriter wtr)
        {
            wtr.Write(_type);
            wtr.WriteUTF(_atmosphere);
            wtr.Write(_particles);
            wtr.Write((byte)_weather);
            wtr.Write(_windSpeed[0]);
            wtr.Write(_windSpeed[1]);
            wtr.Write(_particleDirection);
            wtr.Write(_currentTime);
        }
    }
}
