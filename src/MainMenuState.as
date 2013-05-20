package  
{
	/**
	 * ...
	 * @author Oleg "Rocanten" Prokofev
	 */
	public class MainMenuState implements IGameState 
	{
		private var stateManager:StateManager;
		
		public function MainMenuState(_stateManager:StateManager) 
		{
			stateManager = _stateManager;
			trace("Creating main menu");
		}
		
		public function update():void
		{
			stateManager.changeState(StateManager.GAMEPLAY_STATE);
		}
		
		public function destroy():void
		{
			trace("Destroying main menu");
		}
		
	}

}