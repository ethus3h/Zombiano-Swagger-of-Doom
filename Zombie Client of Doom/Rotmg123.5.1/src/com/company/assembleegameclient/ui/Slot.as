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

//com.company.assembleegameclient.ui.Slot

package com.company.assembleegameclient.ui {
import com.company.ui.SimpleText;
import com.company.util.AssetLibrary;
import com.company.util.GraphicHelper;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.filters.ColorMatrixFilter;
import flash.geom.Matrix;
import flash.geom.Point;


public class Slot extends Sprite {

    public static const any_:int = 0;
    public static const sword_:int = 1;
    public static const dagger_:int = 2;
    public static const bow_:int = 3;
    public static const tome_:int = 4;
    public static const shield_:int = 5;
    public static const leatherArmor_:int = 6;
    public static const heavyArmor_:int = 7;
    public static const wand_:int = 8;
    public static const accessory_:int = 9;
    public static const potion_:int = 10;
    public static const spell_:int = 11;
    public static const holySeal_:int = 12;
    public static const cloak_:int = 13;
    public static const robe_:int = 14;
    public static const quiver_:int = 15;
    public static const helm_:int = 16;
    public static const staff_:int = 17;
    public static const poison_:int = 18;
    public static const skull_:int = 19;
    public static const trap_:int = 20;
    public static const orb_:int = 21;
    public static const prism_:int = 22;
    public static const scepter_:int = 23;
    public static const katana_:int = 24;
    public static const shuriken_:int = 25;
    public static const WIDTH:int = 40;
    public static const HEIGHT:int = 40;
    public static const BORDER:int = 4;
    private static const _0I_E_:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._fL_(/*0x73543F*/0x473224));//0x734D34));//0x734D34));

    public var type_:int;
    public var _ws:int;
    public var _07i:Array;
    public var _0H_K_:Bitmap;
    public var equipment_:Boolean;
    protected var _04c:GraphicsSolidFill;
    protected var path_:GraphicsPath;
    private var graphicsData_:Vector.<IGraphicsData>;

    public function Slot(_arg1:int, _arg2:int, _arg3:Array, _equipment:Boolean = false) {
        this._04c = new GraphicsSolidFill(_equipment ? 0x73543F : 0x73543F, 1);//0x600D00 : = invslot 1-12 ? = item slots for weapons
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[this._04c, this.path_, GraphicHelper.END_FILL];
        super();
        this.type_ = _arg1;
        this._ws = _arg2;
        this._07i = _arg3;
        this._rC_();
    }

    public static function _mb(_arg1:int):String {
        switch (_arg1) {
            case -10:
                return ("Output");
            case -1:
                return ("Offer");
            case -2:
                return ("Item");
            case any_:
                return ("Any");
            case sword_:
                return ("Sword");
            case dagger_:
                return ("Dagger");
            case bow_:
                return ("Bow");
            case tome_:
                return ("Tome");
            case shield_:
                return ("Shield");
            case leatherArmor_:
                return ("Leather Armor");
            case heavyArmor_:
                return ("Armor");
            case wand_:
                return ("Wand");
            case accessory_:
                return ("Accessory");
            case potion_:
                return ("Potion");
            case spell_:
                return ("Spell");
            case holySeal_:
                return ("Holy Seal");
            case cloak_:
                return ("Cloak");
            case robe_:
                return ("Robe");
            case quiver_:
                return ("Quiver");
            case helm_:
                return ("Helm");
            case staff_:
                return ("Staff");
            case poison_:
                return ("Poison");
            case skull_:
                return ("Skull");
            case trap_:
                return ("Trap");
            case orb_:
                return ("Orb");
            case prism_:
                return ("Prism");
            case scepter_:
                return ("Scepter");
            case katana_:
                return ("Katana");
            case shuriken_:
                return ("Shuriken");
        }
        return ("Invalid Type!");
    }

    protected function _H_K_(_arg1:int, _arg2:int, _arg3:Boolean):Point {
        var _local4:Point = new Point();
        switch (_arg2) {
            case accessory_:
                _local4.x = (((_arg1) == 2878) ? 0 : -2);
                _local4.y = ((_arg3) ? -2 : 0);
                break;
            case spell_:
                _local4.y = -2;
                break;
        }
        return (_local4);
    }

    protected function _rC_():void {
        var _local4:Point;
        var _local5:SimpleText;
        var _local6:Matrix;
        GraphicHelper._0L_6(this.path_);
        GraphicHelper.drawUI(0, 0, WIDTH, HEIGHT, 4, this._07i, this.path_);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData_);
        var _local1:BitmapData;
        var _local2:int;
        var _local3:int;
        switch (this.type_) {
            case any_:
                break;
            case sword_:
                _local1 = AssetLibrary._xK_("lofiObj5", 48);
                break;
            case dagger_:
                _local1 = AssetLibrary._xK_("lofiObj5", 96);
                break;
            case bow_:
                _local1 = AssetLibrary._xK_("lofiObj5", 80);
                break;
            case tome_:
                _local1 = AssetLibrary._xK_("lofiObj6", 80);
                break;
            case shield_:
                _local1 = AssetLibrary._xK_("lofiObj6", 112);
                break;
            case leatherArmor_:
                _local1 = AssetLibrary._xK_("lofiObj5", 0);
                break;
            case heavyArmor_:
                _local1 = AssetLibrary._xK_("lofiObj5", 32);
                break;
            case wand_:
                _local1 = AssetLibrary._xK_("lofiObj5", 64);
                break;
            case accessory_:
                _local1 = AssetLibrary._xK_("lofiObj", 44);
                break;
            case spell_:
                _local1 = AssetLibrary._xK_("lofiObj6", 64);
                break;
            case holySeal_:
                _local1 = AssetLibrary._xK_("lofiObj6", 160);
                break;
            case cloak_:
                _local1 = AssetLibrary._xK_("lofiObj6", 32);
                break;
            case robe_:
                _local1 = AssetLibrary._xK_("lofiObj5", 16);
                break;
            case quiver_:
                _local1 = AssetLibrary._xK_("lofiObj6", 48);
                break;
            case helm_:
                _local1 = AssetLibrary._xK_("lofiObj6", 96);
                break;
            case staff_:
                _local1 = AssetLibrary._xK_("lofiObj5", 112);
                break;
            case poison_:
                _local1 = AssetLibrary._xK_("lofiObj6", 128);
                break;
            case skull_:
                _local1 = AssetLibrary._xK_("lofiObj6", 0);
                break;
            case trap_:
                _local1 = AssetLibrary._xK_("lofiObj6", 16);
                break;
            case orb_:
                _local1 = AssetLibrary._xK_("lofiObj6", 144);
                break;
            case prism_:
                _local1 = AssetLibrary._xK_("lofiObj6", 176);
                break;
            case scepter_:
                _local1 = AssetLibrary._xK_("lofiObj6", 192);
                break;
            case katana_:
                _local1 = AssetLibrary._xK_("lofiObj3", 512);
                break;
            case shuriken_:
                _local1 = AssetLibrary._xK_("lofiObj3", 547);
                break;
        }
        if (this._0H_K_ == null) {
            if (_local1 != null) {
                _local4 = this._H_K_(-1, this.type_, true);
                this._0H_K_ = new Bitmap(_local1);
                this._0H_K_.x = (BORDER + _local4.x);
                this._0H_K_.y = (BORDER + _local4.y);
                this._0H_K_.scaleX = 4;
                this._0H_K_.scaleY = 4;
                this._0H_K_.filters = [_0I_E_];
                addChild(this._0H_K_);
            } else {
                if (this._ws > 0) {
                    _local5 = new SimpleText(22, 0x473224, false, 0, 0, "Myriad Pro");
                    _local5.text = String(this._ws);
                    _local5.boldText(true);
                    _local5.updateMetrics();
                    _local1 = new BitmapData(26, 30, true, 0);
                    _local6 = new Matrix();
                    _local1.draw(_local5, _local6);
                    this._0H_K_ = new Bitmap(_local1);
                    this._0H_K_.x = ((WIDTH / 2) - (_local5.textWidth / 2)) - 2;
                    this._0H_K_.y = ((HEIGHT / 2) - (_local5.textHeight / 2)) - 2;
                    addChild(this._0H_K_);
                }
            }
        }
    }

}
}//package com.company.assembleegameclient.ui

