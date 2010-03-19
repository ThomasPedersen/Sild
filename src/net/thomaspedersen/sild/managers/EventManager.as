package net.thomaspedersen.sild.managers
{
	import net.thomaspedersen.sild.events.GameEvent;
	import net.thomaspedersen.sild.events.ListenerData;
	import net.thomaspedersen.sild.interfaces.IDispatcher;
	
	public class EventManager
	{
		private var _dispatchers:Array;
		private var _listeners:Array;
		
		public function EventManager()
		{
			_dispatchers = new Array();
			_listeners = new Array();		
		}
		
		public function get numListeners():int
		{
			return _listeners.length;
		}
		
		public function get numDispatchers():int
		{
			return _dispatchers.length;
		}
		
		public function addListener(type:String, obj_id:uint, obj:Object, func:Function):void
		{
			_listeners.push(new ListenerData(type, obj_id, obj, func));		
		}       
		
		public function removeListenerById(listener_id:uint):void
		{
			var to_remove:Array = new Array();
			var len:int = _listeners.length;
			for (var i:int=0; i<len; i++)
			{
				var ld:ListenerData = _listeners[i];
				if (ld.id == listener_id) to_remove.push(ld);	
			}
			var idx:int = 0;
			for each (var ld2:ListenerData in to_remove)
			{
				idx = _listeners.indexOf(ld2);
				if (idx != -1)
					_listeners.splice(idx, 1);
			}		
		}     
		
		public function registerDispatcher(dispatcher:IDispatcher):void
		{
			_dispatchers.push(dispatcher);
		}
		
		public function removeDispatcher(dispatcher:IDispatcher):void
		{
			_dispatchers.splice(_dispatchers.indexOf(dispatcher, 1));
		}
		
		public function dispatchEvent(e:GameEvent):void
		{
			// Send out to all listeners:
			var to_remove:Array = new Array();
			var len:int = _listeners.length;
			for (var i:int=0; i<len; i++)
			{
				if (_listeners[i] != null && _listeners[i].type == e.type)
				{
					var ld:ListenerData = _listeners[i];
					ld.func.call(ld.listenerReference, e);	
				}
			}
			
			var idx:int = 0;
			for each (var ld2:ListenerData in to_remove)
			{
				idx = _listeners.indexOf(ld2);
				if (idx != -1) 
					_listeners.splice(_listeners.indexOf(ld2), 1);
			}
		}   
	}
}