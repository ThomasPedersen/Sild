package {
	import flash.display.Sprite;
	import flash.events.Event;
	
	import net.thomaspedersen.sild.game.Game;
	import net.thomaspedersen.sild.model.entity.Entity;
	import net.thomaspedersen.sild.view.EntityView;

	public class Sild extends Sprite
	{
		public function Sild()
		{
			var e:Entity = new Entity();
			var v:EntityView = new EntityView(e);
			
			Game.instance.entity_manager.add(e);
			Game.instance.view_manager.add(v);
			
			addChild(v);
			
			addEventListener(Event.ENTER_FRAME, function step(e:Event):void {
				Game.instance.entity_manager.update();
				Game.instance.view_manager.update(0);
			});
		}
	}
}
