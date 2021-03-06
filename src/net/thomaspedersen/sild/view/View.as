package net.thomaspedersen.sild.view
{
	import net.thomaspedersen.sild.interfaces.IManageable;
	
	public class View implements IView
	{
		private var _id:uint;
		public function View()
		{
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
			delete this;
		}
	}
}