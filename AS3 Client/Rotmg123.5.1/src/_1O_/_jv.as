﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//_1O_._jv

package _1O_{
    import _0_p._D_v;
    import _lo._9i;
    import _03T_._078;
    import _eZ_._08b;
    import _0_p._L_y;
    import _lo._t5;

    public class _jv implements _D_v {

        private static var _A_5:_9i;
        private static var _8B_:uint;

        private const _ul:String = _078.create(_jv);

        private var _vz:_08b;

        public function extend(_arg1:_L_y):void{
            _8B_++;
            this._vz = _arg1._O_R_;
            _arg1._iL_._0C_t(this._0C_t);
            _arg1._iL_._kf(this._kf);
        }
        public function toString():String{
            return (this._ul);
        }
        private function _0C_t():void{
            var _local1:_t5;
            if (_A_5 == null)
            {
                _local1 = this._vz.getInstance(_t5);
                _A_5 = new _9i(_local1);
            }
        }
        private function _kf():void{
            _8B_--;
            if (_8B_ == 0)
            {
                _A_5.destroy();
                _A_5 = null;
            }
        }

    }
}//package _1O_

