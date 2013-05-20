package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Oleg "Rocanten" Prokofev
	 */
	public class Main extends Sprite 
	{
		private var stateManager:StateManager;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			stateManager = new StateManager();
			stateManager.changeState(StateManager.MAIN_MENU_STATE);
			
		}
		
		private function onEnterFrame(event:Event):void
		{
			stateManager.update();
		}
		
	}
	
}