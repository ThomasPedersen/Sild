package net.thomaspedersen.sild.events
{
	public class GameEvent
	{
		private var _dispatcher:Object;
		private var _type:String;
		private var _dispatcher_id:uint;
		
		public function GameEvent(type:String, dispatcher_id:uint, dispatcher:Object=null)
		{
			_dispatcher = dispatcher;
			_type = type;
			_dispatcher_id = dispatcher_id;
		}
		
		public function get dispatcherId():uint
		{
			return _dispatcher_id;
		}
		
		public function get type():String
		{
			return _type;
		}
		
		public function get dispatcher():Object
		{
			return _dispatcher;
		}
	}
}