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
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//_lo._9i

package _lo {
import flash.display.DisplayObjectContainer;
import flash.display.DisplayObject;

public class _9i {

    private var _055:_t5;

    public function _9i(_arg1:_t5) {
        var _local2:_02f;
        super();
        this._055 = _arg1;
        this._055.addEventListener(_or._0K_h, this._wC_);
        this._055.addEventListener(_or._mh, this._B_8);
        for each (_local2 in this._055._B_b) {
            this._rV_(_local2.container);
        }
    }

    public function destroy():void {
        var _local1:_02f;
        this._055.removeEventListener(_or._0K_h, this._wC_);
        this._055.removeEventListener(_or._mh, this._B_8);
        for each (_local1 in this._055._B_b) {
            this._N_1(_local1.container);
        }
    }

    private function _wC_(_arg1:_or):void {
        this._rV_(_arg1.container);
    }

    private function _B_8(_arg1:_or):void {
        this._N_1(_arg1.container);
    }

    private function _rV_(_arg1:DisplayObjectContainer):void {
        _arg1.addEventListener(_vR_._0N_0, this._0C_2);
    }

    private function _N_1(_arg1:DisplayObjectContainer):void {
        _arg1.removeEventListener(_vR_._0N_0, this._0C_2);
    }

    private function _0C_2(_arg1:_vR_):void {
        var _local3:DisplayObject;
        _arg1.stopImmediatePropagation();
        var _local2:DisplayObjectContainer = (_arg1.currentTarget as DisplayObjectContainer);
        _local3 = (_arg1.target as DisplayObject);
        var _local4:Class = _local3["constructor"];
        this._055._3N_(_local2)._H_3(_local3, _local4);
    }

}
}//package _lo

