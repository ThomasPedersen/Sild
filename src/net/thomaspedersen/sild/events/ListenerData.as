package net.thomaspedersen.sild.events
{
	public class ListenerData
	{
		private var m_listener_reference:Object;
		private var m_func:Function;
		private var m_type:String;
		private var m_id:uint;
		
		public function ListenerData(event_type:String, listener_id:uint, listener_reference:Object, func:Function)
		{
			m_type = event_type;
			m_id = listener_id;
			m_listener_reference = listener_reference;
			m_func = func;
		}
		
		public function get id():uint 
		{ 
			return m_id; 
		}
		
		public function get func():Function 
		{ 
			return m_func; 
		}		
		
		public function get type():String 
		{ 
			return m_type; 
		}
		
		public function get listenerReference():Object 
		{ 
			return m_listener_reference; 
		}
	}
}