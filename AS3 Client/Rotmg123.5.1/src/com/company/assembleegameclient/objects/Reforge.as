package com.company.assembleegameclient.objects
{
	import com.company.assembleegameclient.game.GameSprite;
	
	import _R_v.Panel;
	import _R_v.ReforgePanel;
	
	public class Reforge extends GameObject implements _G_4
	{
		public function Reforge(_arg1:XML) {
			super(_arg1);
			this._064 = true;
		}
		
		public function _C_s(_arg1:GameSprite):Panel {
			return new ReforgePanel(_arg1, this);
		}
	}
}