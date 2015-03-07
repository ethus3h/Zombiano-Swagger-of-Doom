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

//com.company.assembleegameclient.ui.Inventory

package com.company.assembleegameclient.ui {
import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.GameObject;
import com.company.util.GraphicHelper;

import flash.display.Bitmap;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;


public class Inventory extends Sprite {

    private static const _pm:Array = [0, 0, 0, 0];
    private static const _ls:Object = {
        "1": [[1, 1, 1, 1]],
        "2": [[1, 0, 0, 1], [0, 0, 0, 0]],
        "3": [[1, 0, 0, 1], _pm, [0, 1, 1, 0]],
        "4": [[1, 0, 0, 1], _pm, _pm, [0, 1, 1, 0]],
        "5": [[1, 0, 0, 1], _pm, _pm, [0, 1, 1, 0], [0, 0, 1, 1]],
        "6": [[1, 0, 0, 1], _pm, _pm, [0, 1, 1, 0], [0, 0, 0, 1], [0, 0, 1, 0]],
        "7": [[1, 0, 0, 1], _pm, _pm, [0, 1, 1, 0], [0, 0, 0, 1], _pm, [0, 0, 1, 0]],
        "8": [[1, 0, 0, 0], _pm, _pm, [0, 1, 0, 0], [0, 0, 0, 1], _pm, _pm, [0, 0, 1, 0]],
        "12": [[1, 0, 0, 1], _pm, _pm, [0, 1, 1, 0], [1, 0, 0, 0], _pm, _pm, [0, 1, 0, 0], [0, 0, 0, 1], _pm, _pm, [0, 0, 1, 0]]
    };

    public var gs_:GameSprite;
    public var gameObject_:GameObject;
    public var _A_H_:String;
    public var invsize_:int;
    public var slots_:Vector.<InventorySlot>;
    public var equipment_:Boolean;

    protected var fill_:GraphicsSolidFill;
    protected var path_:GraphicsPath;
    private var graphicsData_:Vector.<IGraphicsData>;

    public function Inventory(_arg1:GameSprite, _arg2:GameObject, _arg3:String, _arg4:Vector.<int>, _arg5:int, _arg6:Boolean, _offset:int = 0, _equipment:Boolean = false):void {
        var _local8:InventorySlot;
        this.slots_ = new Vector.<InventorySlot>();
        this.fill_ = new GraphicsSolidFill(0x473224);//0x5C4434);//0x4A260F);//0x73543F);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[this.fill_, this.path_, GraphicHelper.END_FILL];
        super();
        this.gs_ = _arg1;
        this.gameObject_ = _arg2;
        this._A_H_ = _arg3;
        this.invsize_ = _arg5;
        this.equipment_ = _equipment;
        if (((_arg1) && ((_arg2 == this.gs_.map_.player_)))) {
            this.gs_.map_.player_.inventory = this;
        }
        var _local7:int;
        var _local10:int;
        while (_local7 < _arg5) {
            _local10 = _local7 + _offset;
            _local8 = new InventorySlot(this, _local10, _arg4[_local7], ((_arg6) ? (_local10 - 3) : -1), _ls[_arg4.length][_local7], _equipment);
            _local8.x = (int((_local7 % 4)) * (Slot.WIDTH + 4));
            _local8.y = (int((_local7 / 4)) * (Slot.HEIGHT + 4));
            this.slots_.push(_local8);
            addChild(_local8);
            _local7++;
        }
    }

    public function draw(_arg1:Vector.<int>):void {
        var _local3:InventorySlot;
        var _local2:int;
        if (this.equipment_) {
            GraphicHelper._0L_6(this.path_);
            GraphicHelper.drawUI(-3, -3, 178, 46, 6, [1, 1, 1, 1], this.path_);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData_);
        }
        while (_local2 < this.slots_.length) {
            _local3 = this.slots_[_local2];
            _local3.draw(((((!((_arg1 == null))) && ((_local2 < _arg1.length)))) ? _arg1[_local2] : -1));
            _local2++;
        }
    }

    public function refresh():void {
        var _local1:InventorySlot;
        for each (_local1 in this.slots_) {
            _local1.refresh();
        }
    }

    public function useItem(_arg1:int):void {
        if ((((_arg1 < 0)) || ((_arg1 >= this.slots_.length)))) {
            return;
        }
        this.slots_[_arg1].attemptUse();
    }

    public function _mK_():Boolean {
        var _local3:InventorySlot;
        if (!this.gs_) {
            return (false);
        }
        if (this.invsize_ < 12) {
            return false;
        }
        var _local1:Boolean = true;
        var _local2:uint = 4;
        while (_local2 < 12) {
            _local3 = this.gs_.map_.player_.inventory.slots_[_local2];
            if (_local3._X_B_ == null) {
                _local1 = false;
            }
            _local2++;
        }
        return (_local1);
    }

}
}//package com.company.assembleegameclient.ui

