package net.thomaspedersen.sild.view
{
	import net.thomaspedersen.sild.model.entity.Entity;
	
	public class EntityView extends SpriteView
	{
		private var _entity:Entity;
		public function EntityView(e:Entity)
		{
			super();
			_entity = e;
			graphics.beginFill(0x993300);
			graphics.drawCircle(0, 0, 10);
			graphics.endFill();
		}
		
		public override function update(interpolation:Number):void
		{
			x = _entity.position.x;
			y = _entity.position.y;
		}
		
	}
}