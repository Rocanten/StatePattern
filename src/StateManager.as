package  
{
	/**
	 * ...
	 * @author Oleg "Rocanten" Prokofev
	 */
	public class StateManager 
	{
		public static const MAIN_MENU_STATE:int = 1;
		public static const GAMEPLAY_STATE:int = 2;
		
		private var currentState:IGameState;
		
		public function StateManager() 
		{
			
		}
		
		public function changeState(newState:int):void
		{
			if (currentState)
			{
				currentState.destroy();
			}
			switch (newState) 
			{
				case MAIN_MENU_STATE:
					{
						currentState = new MainMenuState(this);
						break;
					}
				case GAMEPLAY_STATE:
					{
						currentState = new GameplayState(this);
						break;
					}
			}
		}
		
		public function update():void
		{
			currentState.update();
		}
		
	}

}