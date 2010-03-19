package net.thomaspedersen.sild.interfaces
{
	public interface IListener
	{
		function addListener(type:String, fn:Function):void;
		function removeAllListeners():void;	
	}
}