﻿// Copyright (c) 2015, FireBite/Aceticsoft Studios Inc.
// All rights reserved.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.// either expressed or implied, of the FreeBSD Project.// either expressed or implied, of the FreeBSD Project.

// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//_4x._0I_y

package _4x {
import com.company.util.MoreColorUtil;

public class _0I_y {

    public var h_:Number;
    public var _ew:Number;
    public var _fz:Number;

    public function _0I_y(_arg1:Number = 0, _arg2:Number = 0, _arg3:Number = 0) {
        this.h_ = Math.max(0, Math.min(359, int(_arg1)));
        this._ew = Math.max(0, Math.min(1, _arg2));
        this._fz = Math.max(0, Math.min(1, _arg3));
    }

    public static function random():_0I_y {
        var _local1:_0K_P_ = _0K_P_._am(MoreColorUtil._0L_E_());
        return (_local1._025());
    }

    public function clone():_0I_y {
        return (new _0I_y(this.h_, this._ew, this._fz));
    }

    public function equals(_arg1:_0I_y):Boolean {
        return (((((((!((_arg1 == null))) && ((this.h_ == _arg1.h_)))) && ((this._ew == _arg1._ew)))) && ((this._fz == _arg1._fz))));
    }

    public function _N_u():_0K_P_ {
        var _local6:Number;
        var _local7:Number;
        var _local8:Number;
        var _local1:int = (int((this.h_ / 60)) % 6);
        var _local2:Number = ((this.h_ / 60) - Math.floor((this.h_ / 60)));
        var _local3:Number = (this._fz * (1 - this._ew));
        var _local4:Number = (this._fz * (1 - (_local2 * this._ew)));
        var _local5:Number = (this._fz * (1 - ((1 - _local2) * this._ew)));
        switch (_local1) {
            case 0:
                _local6 = this._fz;
                _local7 = _local5;
                _local8 = _local3;
                break;
            case 1:
                _local6 = _local4;
                _local7 = this._fz;
                _local8 = _local3;
                break;
            case 2:
                _local6 = _local3;
                _local7 = this._fz;
                _local8 = _local5;
                break;
            case 3:
                _local6 = _local3;
                _local7 = _local4;
                _local8 = this._fz;
                break;
            case 4:
                _local6 = _local5;
                _local7 = _local3;
                _local8 = this._fz;
                break;
            case 5:
                _local6 = this._fz;
                _local7 = _local3;
                _local8 = _local4;
                break;
        }
        return (new _0K_P_(_local6, _local7, _local8));
    }

    public function toString():String {
        return ((((((("HSV(" + this.h_) + ", ") + this._ew) + ", ") + this._fz) + ")"));
    }

}
}//package _4x

