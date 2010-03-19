package net.thomaspedersen.sild.managers
{
	import net.thomaspedersen.sild.interfaces.IView;
	
	public class ViewManager
	{
		private var _views:Array;
		private var _deletion_queue:Array;
		
		public function ViewManager()
		{
			_views = new Array();
		}
		
		public function add(e:IView):void
		{
			_views.push(e);
		}
		
		public function remove(e:IView):void
		{
			_deletion_queue.push(e);
		}
		
		public function update(interpolation:Number):void
		{
			for each (var e:IView in _views)
			{
				e.update(interpolation);
			}
		}
		
		public function get numviews():int
		{
			return _views.length;
		}
		
		public function performDeletions():void
		{
			for each (var v:IView in _deletion_queue) {
				_views.splice(_views.indexOf(v), 1);
				v.destroy();
			}
			_deletion_queue = new Array();
		}

	}
}