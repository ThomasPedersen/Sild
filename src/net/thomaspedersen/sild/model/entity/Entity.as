package net.thomaspedersen.sild.model.entity
{
	import flash.geom.Point;
	
	import net.thomaspedersen.sild.model.Model;
	
	public class Entity extends Model
	{
		protected var _position:Point;
		protected var _speed:Number;
		protected var _rotation:Number;
		protected var _turn_speed:Number;

		
		public function Entity()
		{
			super();
			_position = new Point(100, 100);
			_speed = 5;
			_rotation = 2*Math.PI/6;
			_turn_speed = Math.PI/8;
		}
		
		public function update():void
		{
			_rotation += _turn_speed; 
			_position.x += Math.cos(_rotation) * _speed;
			_position.y += Math.sin(_rotation) * _speed;
		}
		
		public function get rotation():Number
		{
			return _rotation;
		}
		
		public function get speed():Number
		{
			return _speed;
		}
		
		public function get turn_speed():Number
		{
			return _turn_speed;
		}
		
		public function get position():Point
		{
			return _position;
		}
	}
}