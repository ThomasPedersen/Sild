package net.thomaspedersen.sild.interfaces
{
	import net.thomaspedersen.sild.events.GameEvent;
	
	public interface IDispatcher
	{
		function dispatchEvent(e:GameEvent):void;	
	}
}