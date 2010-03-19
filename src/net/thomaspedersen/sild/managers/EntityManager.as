package net.thomaspedersen.sild.managers
{
	import net.thomaspedersen.sild.model.entity.Entity;
	
	public class EntityManager
	{
		private var _entities:Array;
		private var _deletion_queue:Array;
		
		public function EntityManager()
		{
			_entities = new Array();
		}
		
		public function add(e:Entity):void
		{
			_entities.push(e);
		}
		
		public function remove(e:Entity):void
		{
			_deletion_queue.push(e);
		}
		
		public function update():void
		{
			for each (var e:Entity in _entities)
			{
				e.update();
			}
		}
		
		public function get numEntities():int
		{
			return _entities.length;
		}
		
		public function performDeletions():void
		{
			for each (var e:Entity in _deletion_queue) {
				_entities.splice(_entities.indexOf(e), 1);
				e.destroy();
			}
			_deletion_queue = new Array();
		}
	}
}