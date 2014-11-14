﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//Frames._O_I_

package Frames{
import flash.display.Sprite;
import com.company.ui.SimpleText;
import flash.filters.DropShadowFilter;
import flash.display.LineScaleMode;
import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.events.Event;

public class TextInput extends Sprite {

    public static const HEIGHT:int = 88;

    public var nameText_:SimpleText;
    public var inputText_:SimpleText;
    public var errorText_:SimpleText;

    public function TextInput(_arg1:String, _arg2:Boolean, _arg3:String){
        this.nameText_ = new SimpleText(18, 0xB3B3B3, false, 0, 0, "Myriad Pro");
        this.nameText_._8Y_(true);
        this.nameText_.text = _arg1;
        this.nameText_.updateMetrics();
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this.inputText_ = new SimpleText(20, 0xB3B3B3, true, 238, 30, "Myriad Pro");
        this.inputText_.y = 30;
        this.inputText_.x = 6;
        this.inputText_.border = false;
        this.inputText_.displayAsPassword = _arg2;
        this.inputText_.updateMetrics();
        addChild(this.inputText_);
        graphics.lineStyle(2, 0x73543F, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        graphics.beginFill(0x6B472E, 1);
        //graphics.lineStyle(2, 0x610F00, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        //graphics.beginFill(0x3F0A00, 1);
        graphics.drawRect(0, this.inputText_.y, 238, 30);
        graphics.endFill();
        graphics.lineStyle();
        this.inputText_.addEventListener(Event.CHANGE, this._02L_);
        this.errorText_ = new SimpleText(12, 16549442, false, 0, 0, "Myriad Pro");
        this.errorText_.y = (this.inputText_.y + 32);
        this.errorText_.text = _arg3;
        this.errorText_.updateMetrics();
        this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.errorText_);
    }
    public function text():String{
        return (this.inputText_.text);
    }
    public function _0B_T_(_arg1:String):void{
        this.errorText_.text = _arg1;
        this.errorText_.updateMetrics();
    }
    public function _02L_(_arg1:Event):void{
        this._0B_T_("");
    }

}
}//package Frames