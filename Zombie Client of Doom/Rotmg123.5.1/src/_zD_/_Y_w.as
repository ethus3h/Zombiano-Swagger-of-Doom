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
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.// either expressed or implied, of the FreeBSD Project.

// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//_zD_._Y_w

package _zD_ {
import flash.display.Sprite;

import mx.core.BitmapAsset;

import _8Q_._1l;


public class _Y_w extends Sprite {

    private static var _L_j:Class = _0E_G_;
    private static var _Z_m:Class = _J_e;
    private static var _0K_1:Class = _0D_M_;
    private static var _dc:Class = _I_M_;
    private static var _R_6:Class = _Z_I_;

    private var _0D_m:BitmapAsset;
    private var _03r:Vector.<BitmapAsset>;

    public function _Y_w() {
        this._0D_m = new _L_j();
        addChild(this._0D_m);
        this._03r = new Vector.<BitmapAsset>(4, true);
        this._03r[0] = new _R_6();
        this._03r[1] = new _Z_m();
        this._03r[2] = new _0K_1();
        this._03r[3] = new _dc();
        var _local1:int;
        while (_local1 < 4) {
            this._03r[_local1].x = (12 + (40 * _local1));
            this._03r[_local1].y = 12;
            _local1++;
        }
    }

    public function _09X_(_arg1:_1l):void {
        var _local2:BitmapAsset = this._03r[_arg1.position];
        if (!contains(_local2)) {
            addChild(_local2);
        }
    }

    public function _h5(_arg1:_1l):void {
        var _local2:BitmapAsset = this._03r[_arg1.position];
        if (contains(_local2)) {
            removeChild(_local2);
        }
    }

}
}//package _zD_

