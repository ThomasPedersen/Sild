package net.thomaspedersen.sild.view
{
	import flash.display.Sprite;
	
	import net.thomaspedersen.sild.game.Game;
	import net.thomaspedersen.sild.interfaces.IView;
	
	public class SpriteView extends Sprite implements IView
	{
		private var _id:uint;
		public function SpriteView()
		{
			super();
			_id = Game.instance.generateId();
		}
		
		public function update(interpolation:Number):void
		{
		
		}
		
		public function addListener(type:String, fn:Function):void
		{
			Game.instance.event_manager.addListener(type, this.id, this, fn);
		}
		
		public function removeAllListeners():void
		{
			Game.instance.event_manager.removeListenerById(this.id);
		}
		
		public function get id():uint
		{
			return _id;
		}
		
		public function destroy():void
		{
			if (parent != null)
				parent.removeChild(this);
			delete this;
		}
		
	}
}