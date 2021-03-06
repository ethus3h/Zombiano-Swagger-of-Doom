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

//com.company.assembleegameclient.engine3d._uZ_

package com.company.assembleegameclient.engine3d {

import flash.geom.Matrix3D;
import flash.geom.Vector3D;
import flash.geom.Utils3D;
import flash.display.IGraphicsData;

import com.company.assembleegameclient.map._0D_v;

import flash.display.BitmapData;


public class _uZ_ {

    public var _00n:_B_5 = null;
    public var vL_:Vector.<Number>;
    public var uvts_:Vector.<Number>;
    public var faces_:Vector.<ObjectFace3D>;
    public var vS_:Vector.<Number>;
    public var vW_:Vector.<Number>;
    public var _kZ_:Matrix3D;

    public function _uZ_(_arg1:_B_5 = null) {
        var _local2:_0E_6;
        this.faces_ = new Vector.<ObjectFace3D>();
        this.vS_ = new Vector.<Number>();
        this.vW_ = new Vector.<Number>();
        this._kZ_ = new Matrix3D();
        super();
        if (_arg1 != null) {
            this._00n = _arg1;
            this.vL_ = this._00n.vL_;
            this.uvts_ = this._00n.uvts_.concat();
            for each (_local2 in this._00n.faces_) {
                this.faces_.push(new ObjectFace3D(this, _local2._0V_, _local2._hg));
            }
        } else {
            this.vL_ = new Vector.<Number>();
            this.uvts_ = new Vector.<Number>();
        }
        this.setPosition(0, 0, 0, 0);
    }

    public static function getObject(_arg1:String):_uZ_ {
        var _local2:_B_5 = _B_5._e6(_arg1);
        return new _uZ_(_local2);
    }

    public function dispose():void {
        var _local1:ObjectFace3D;
        this.vL_ = null;
        this.uvts_ = null;
        for each (_local1 in this.faces_) {
            _local1.dispose();
        }
        this.faces_.length = 0;
        this.faces_ = null;
        this.vS_ = null;
        this.vW_ = null;
        this._kZ_ = null;
    }

    public function setPosition(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):void {
        var _local5:ObjectFace3D;
        this._kZ_.identity();
        this._kZ_.appendRotation(_arg4, Vector3D.Z_AXIS);
        this._kZ_.appendTranslation(_arg1, _arg2, _arg3);
        this._kZ_.transformVectors(this.vL_, this.vW_);
        for each (_local5 in this.faces_) {
            _local5._J_d();
        }
    }

    public function _iv(_arg1:int):Vector3D {
        var _local2:int = (_arg1 * 3);
        if (_local2 >= this.vW_.length) {
            return (null);
        }
        return (new Vector3D(this.vW_[_local2], this.vW_[(_local2 + 1)], this.vW_[(_local2 + 2)]));
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_0D_v, _arg3:uint, _arg4:BitmapData):void {
        var _local5:ObjectFace3D;
        Utils3D.projectVectors(_arg2.wToS_, this.vW_, this.vS_, this.uvts_);
        for each (_local5 in this.faces_) {
            _local5.draw(_arg1, _arg3, _arg4);
        }
    }

}
}//package com.company.assembleegameclient.engine3d

