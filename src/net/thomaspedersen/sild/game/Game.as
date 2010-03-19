package net.thomaspedersen.sild.game
{
	import net.thomaspedersen.sild.managers.EntityManager;
	import net.thomaspedersen.sild.managers.EventManager;
	import net.thomaspedersen.sild.managers.ViewManager;
	
	public class Game
	{
		// Class variables
		private static var _instance:Game;
		
		// Managers
		private var _entity_manager:EntityManager;
	 	private var _view_manager:ViewManager;
	 	private var _event_manager:EventManager;
	 	
	 	// Meh
	 	private var _id_counter:uint;
		
		public function Game()
		{
			if (_instance != null) _instance = this;
			_entity_manager = new EntityManager();
			_event_manager = new EventManager();
			_view_manager = new ViewManager();
			_id_counter = 0;
		}
		
		public function generateId():uint
		{
			return ++_id_counter;
		}
		
		// Getters and setters
		
		public static function get instance():Game
		{
			if (_instance == null) _instance = new Game();
			return _instance;
		}
		
		public function get entity_manager():EntityManager
		{
			return _entity_manager;
		}
		
		public function get view_manager():ViewManager
		{
			return _view_manager;
		}
		
		public function get event_manager():EventManager
		{
			return _event_manager;
		}
		
	}
}