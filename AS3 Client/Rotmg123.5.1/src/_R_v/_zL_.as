﻿// Decompiled by AS3 Sorcerer 1.99
// http://www.as3sorcerer.com/

//_R_v._zL_

package _R_v{
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.KeyboardEvent;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class _zL_ extends _X_i {

        public function _zL_(_arg1:GameSprite){
            super(_arg1, "Change Characters", "Change");
            this.addEventListener(Event.ADDED_TO_STAGE,this.onAdded);
            this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemove);
        }

        protected function onKeyDown(param1:KeyboardEvent) : void {
            if(param1.keyCode == Parameters.data_.interact)
            {
                gs_.dispatchEvent(new Event(Event.COMPLETE));
            }
        }

        override protected function onButtonClick(_arg1:MouseEvent):void{
            gs_.dispatchEvent(new Event(Event.COMPLETE));
        }

        protected function onAdded(param1:Event) : void {
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
        }

        protected function onRemove(param1:Event) : void {
            stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
        }

    }
}//package _R_v

