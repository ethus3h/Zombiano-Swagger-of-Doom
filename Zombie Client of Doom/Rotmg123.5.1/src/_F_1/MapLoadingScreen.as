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

//_F_1._02a

package _F_1 {
import flash.display.Sprite;
import flash.display.DisplayObjectContainer;

import com.company.ui.SimpleText;

import flash.display.DisplayObject;
import flash.display.MovieClip;
import flash.display.BitmapData;
import flash.display.Bitmap;
import flash.filters.DropShadowFilter;
import flash.net.getClassByAlias;
import flash.utils.Timer;
import flash.events.Event;
import flash.text.TextFieldAutoSize;
import flash.events.TimerEvent;

import _05R_.GTween;

import flash.utils.getDefinitionByName;

public class MapLoadingScreen extends Sprite {

    public static const _0L_e:Number = 1000;
    public static const _S_h:int = 5;
    public static const _us:Number = 0.4;
    public static const _02x:Number = 200;

    public var _J_8:Class;
    private var screen:DisplayObjectContainer;
    private var _50:SimpleText;
    //private var _2S_:Vector.<DisplayObject>;
    private var _X_Y_:MovieClip;
    private var charContainer:MovieClip;
    private var _W_Q_:Boolean;
    private var _rc:_kd;
    private var _O__:Boolean;
    private var background:MovieClip;
    private var _kw:String;
    //private var _P_f:int;
    private var bmpData1:BitmapData;
    private var bmpData2:BitmapData;
    private var _nF_:Bitmap;
    private var _ir:Timer;
    private var backgroundImage:String;


    //private var background:Bitmap;

    public function MapLoadingScreen():void {
        this._J_8 = _dy;
        super();
        this._rc = new _kd(this._J_8);
        this._rc.ready.addOnce(this._b);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function _b(_arg1:_kd):void {
        var _local2:MovieClip;
        this.screen = (_arg1.content as MovieClip);
        this.background = (this.screen.getChildByName("background") as MovieClip);
        this.screen.addChild(this.background);
        _local2 = (this.screen.getChildByName("mapNameContainer") as MovieClip);
        this._50 = new SimpleText(30, 0xFFFFFF, false, 0, 0, "Myriad Pro");
        this._50.filters = [new DropShadowFilter(0, 0, 0, 1.0, 2.0, 2.0, 5.0)];
        this._50.boldText(true);
        this._50.autoSize = TextFieldAutoSize.CENTER;
        this._50.updateMetrics();
        this._50.x = _local2.x;
        this._50.y = _local2.y;
        this.screen.addChild(this._50);
        this.charContainer = (this.screen.getChildByName("charContainer") as MovieClip);
        this.charContainer.filters = [new DropShadowFilter()];
        this._X_Y_ = (this.screen.getChildByName("difficulty_indicators") as MovieClip);
        this._X_Y_.visible = false;
        this.screen.getChildByName("bgGroup").visible = false;
        addChild(this.screen);
        this._ir = new Timer(_02x);
        this._aX_();
    }

    public function display(_arg1:String, _arg2:int, _arg3:BitmapData, _arg4:BitmapData, backgroundImage:String):void {
        this._kw = ((_arg1) ? _arg1 : "");
        this.backgroundImage = backgroundImage ? backgroundImage : "default";
        if (((_arg3) && (_arg4))) {
            this.bmpData1 = _arg3;
            this.bmpData2 = _arg4;
            this._nF_ = new Bitmap(this.bmpData1);
        }
        this._O__ = true;
        this._aX_();
    }

    private function _aX_():void {
        if (this._50 && this._O__) {
            this._50.text = this._kw;
            this.background.addChild(new Bitmap(MapInfoBackgrounds.getBackgroundImage(backgroundImage)));
            if (this._nF_) {
                addChild(this._nF_);
                this._nF_.x = ((this.charContainer.x - (this._nF_.width / 2)) + 5);
                this._nF_.y = (this.charContainer.y - (this._nF_.height / 2));
            }
            this._ir.addEventListener(TimerEvent.TIMER, this._I_1);
            this._ir.start();
        }
    }

    private function _X_8():void {
        var _local1:GTween = new GTween(this, _us, {"alpha": 0});
        _local1.onComplete = this._8l;
        mouseEnabled = false;
        mouseChildren = false;
    }

    private function _8l(_arg1:GTween):void {
        if (parent) {
            parent.removeChild(this);
        }
    }

    private function _I_1(_arg1:TimerEvent):void {
        if (this._nF_) {
            this._nF_.bitmapData = (((this._nF_.bitmapData == this.bmpData2)) ? this.bmpData1 : this.bmpData2);
        }
        this._0A_M_();
    }

    public function _pW_(_arg1:Boolean = false):void {
        this._W_Q_ = true;
        this._0A_M_();
    }

    private function _0A_M_():void {
        if (((this._W_Q_) && ((this._ir.currentCount >= (_0L_e / _02x))))) {
            this._X_8();
        }
    }

    private function onRemovedFromStage(_arg1:Event):void {
        if (this._ir) {
            this._ir.stop();
            this._ir = null;
        }
    }

}
}//package _F_1

