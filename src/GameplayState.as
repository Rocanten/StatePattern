package  
{
	/**
	 * ...
	 * @author Oleg "Rocanten" Prokofev
	 */
	public class GameplayState implements IGameState 
	{
		private var stateManager:StateManager;
		
		public function GameplayState(_stateManager:StateManager) 
		{
			stateManager = _stateManager;
			trace("Creating gameplay");
		}
		
		public function update():void
		{
			
		}
		
		public function destroy():void
		{
			trace("Destroying gameplay");
		}
		
	}

}