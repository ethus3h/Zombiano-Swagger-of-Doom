﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//ServerPackets._08E_

package ServerPackets{
    import flash.utils.IDataInput;

    public class BuyResult extends ServerPacket {

        public static const _04l:int = -1;
        public static const _dV_:int = 0;
        public static const _4E_:int = 1;
        public static const _o1:int = 2;
        public static const _7a:int = 3;
        public static const _X_u:int = 4;
        public static const _mI_:int = 5;
        public static const _0I_C_:int = 6;
        public static const craft:int = 7;
        public static const learnCrafting:int = 8;

        public var result_:int;
        public var resultString_:String;

        public function BuyResult(_arg1:uint){
            super(_arg1);
        }
        override public function parseFromInput(_arg1:IDataInput):void{
            this.result_ = _arg1.readInt();
            this.resultString_ = _arg1.readUTF();
        }
        override public function toString():String{
            return (formatToString("BUYRESULT", "result_", "resultString_"));
        }

    }
}//package ServerPackets

