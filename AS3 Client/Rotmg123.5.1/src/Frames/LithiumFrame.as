/**
 * Created by Fabian on 12.11.2014.
 */
package Frames {
import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.ui.Inventory;
import com.company.assembleegameclient.ui._return;

import flash.events.Event;
import flash.events.MouseEvent;

public class LithiumFrame extends Frame
    {
        private var gs_:GameSprite;
        private var obj_:GameObject;

        private var slot1_:Inventory;
        private var slot2_:Inventory;
        private var output_:Inventory;

        public function LithiumFrame(_gs:GameSprite, _obj:GameObject) {
            super("Lithium items", "kek", "fuck u", ":D", 200);
            this.gs_ = _gs;
            this.obj_ = _obj;
            this._0E_n(150);

            this.slot1_ = new Inventory(_gs, _obj, "fgt", new <int>[0], 1, false, 0);
            this.slot2_ = new Inventory(_gs, _obj, "fgt", new <int>[0], 1, false, 1);
            this.output_ = new Inventory(_gs, _obj, "gaylord", new <int>[-10], 1, false, 2);

            this.slot1_.x = 25;
            this.slot1_.y = 50;
            this.slot2_.x = this.w_ - 25 - this.slot2_.width - 10;
            this.slot2_.y = 50;
            this.output_.x = this.w_ / 2 - this.output_.width / 2 - 5;
            this.output_.y = this.h_ - 75 - this.output_.height;

            var _spacer:_return = new _return((this.slot2_.x - 9) - (this.slot1_.x + 9 + this.slot1_.width), 0x310800);
            _spacer.x = this.slot1_.x + 9 + this.slot1_.width;
            _spacer.y = this.slot1_.y + this.slot1_.width / 2;
            var _spacer2:_return = new _return((this.output_.y - 9) - (this.slot1_.y + this.slot1_.width / 2), 0x310800, true);
            _spacer2.x = this.slot2_.x - 9 - ((this.slot2_.x - 9) - (this.slot1_.x + 9 + this.slot1_.width)) / 2;
            _spacer2.y = this.slot1_.y + this.slot1_.width / 2;

            this.addChild(this.slot1_);
            this.addChild(this.slot2_);
            this.addChild(this.output_);
            this.addChild(_spacer);
            this.addChild(_spacer2);

            this.addEventListener(Event.REMOVED_FROM_STAGE, this.cleanup);
            Button1.addEventListener(MouseEvent.CLICK, this.onCraft);
            Button2.addEventListener(MouseEvent.CLICK, this.onClose);
            Button1.x = 10;
        }
        public override function onAddedToStage(e:Event):void {
            super.onAddedToStage(e);
            this.x = (600 / 2) - ((this.w_ - 6) / 2);
            this.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        private function cleanup():void {
            this.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        private function onEnterFrame(e:Event){
            this.slot1_.draw(new <int>[this.obj_.equipment_[0]]);
            this.slot2_.draw(new <int>[this.obj_.equipment_[1]]);
            this.output_.draw(new <int>[this.obj_.equipment_[2]]);
        }
        private function onClose(param1:MouseEvent) : void {
            dispatchEvent(new Event(Event.COMPLETE));
        }
        private function onCraft(param1:MouseEvent) : void {
            this.gs_.gsc_.craftItems(this.obj_.objectId_);
        }
    }
}