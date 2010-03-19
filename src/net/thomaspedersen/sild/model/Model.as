package net.thomaspedersen.sild.model
{
	import net.thomaspedersen.sild.events.GameEvent;
	import net.thomaspedersen.sild.game.Game;
	import net.thomaspedersen.sild.interfaces.IDispatcher;
	import net.thomaspedersen.sild.interfaces.IListener;
	
	public class Model implements IDispatcher, IListener
	{		
		private var _id:uint;
		public function Model()
		{
			_id = Game.instance.generateId();
		}
		
		public function get id():uint
		{
			return _id;
		}
		
		public function addListener(type:String, func:Function):void
		{
			Game.instance.event_manager.addListener(type, this.id, this, func);
		}
		
		public function dispatchEvent(e:GameEvent):void
		{
			Game.instance.event_manager.dispatchEvent(e);
		}
		
		public function removeAllListeners():void
		{
			Game.instance.event_manager.removeListenerById(this.id);
		}
		
		public function destroy():void
		{
			delete this;
		}
	}
}