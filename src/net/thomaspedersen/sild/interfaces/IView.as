package net.thomaspedersen.sild.interfaces
{
	public interface IView
	{
		function destroy():void;
		function update(interpolation:Number):void;
		function addListener(type:String, fn:Function):void;
		function removeAllListeners():void;
		function get id():uint;
	}
}