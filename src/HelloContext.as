package
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class HelloContext extends Context
	{
		public function HelloContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			mediatorMap.mapView(MessageView,MessageViewMediator);
			mediatorMap.mapView(HelloButton,HelloButtonMediator);
		}
	}
}