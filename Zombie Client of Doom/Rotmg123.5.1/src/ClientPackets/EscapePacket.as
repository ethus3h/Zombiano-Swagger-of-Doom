﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//ClientPackets._0F_i

package ClientPackets{
    import flash.utils.IDataOutput;

    public class EscapePacket extends ClientPacket {

        public function EscapePacket(_arg1:uint){
            super(_arg1);
        }
        override public function writeToOutput(_arg1:IDataOutput):void{
        }
        override public function toString():String{
            return (formatToString("ESCAPE"));
        }

    }
}//package ClientPackets
