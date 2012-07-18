package
{
	import org.robotlegs.mvcs.Mediator;
	
	public class MessageViewMediator extends Mediator
	{
		[inject]
		public var view:MessageView;
		override public function onRegister():void
		{
			trace("registed");
			this.addContextListener(HelloWorldMessageEvent.MESSAGE_DISPATCHED,handleMessage);
		}
		
		private function handleMessage(event:HelloWorldMessageEvent):void
		{
			view.text=event.message;
		}
		
		public function MessageViewMediator()
		{
			super();
		}
	}
}