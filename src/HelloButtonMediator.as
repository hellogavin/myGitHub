package
{
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class HelloButtonMediator extends Mediator
	{
		[inject]
		public var view:HelloButton;
		override public function onRegister():void
		{
			this.addViewListener(MouseEvent.CLICK,handleNouseClick);
		}
		
		private function handleNouseClick(event:MouseEvent):void
		{
			dispatch(new HelloWorldMessageEvent(HelloWorldMessageEvent.MESSAGE_DISPATCHED,"Hello world"));
		}
			
		public function HelloButtonMediator()
		{
			super();
		}
	}
}