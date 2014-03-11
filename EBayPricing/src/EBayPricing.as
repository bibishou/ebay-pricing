package
{
	import com.jx.ebay.Main;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	
	[SWF(width="350",height="400",frameRate="60",backgroundColor="#4a4137")]
	public class EBayPricing extends Sprite
	{
		private var _starling:Starling;
		
		public function EBayPricing()
		{
			if(this.stage){
				this.stage.scaleMode = StageScaleMode.NO_SCALE;
				this.stage.align = StageAlign.TOP_LEFT;
			}
			
			this.mouseChildren = this.mouseEnabled = false;
			this.loaderInfo.addEventListener(Event.COMPLETE, loaderInfoCompleteHandler);
		}
		
		protected function loaderInfoCompleteHandler(e:Event):void
		{
			this._starling = new Starling(Main, this.stage);
			this._starling.enableErrorChecking = false;
			this._starling.start();
			
			this.stage.addEventListener(Event.RESIZE, stageResizeHandler, false, int.MAX_VALUE, true);
		}
		
		protected function stageResizeHandler(e:Event):void{
			this._starling.stage.stageWidth = this.stage.stageWidth;
			this._starling.stage.stageHeight = this.stage.stageHeight;
			
			const viewPort:Rectangle = this._starling.viewPort;
			viewPort.width = this.stage.stageWidth;
			viewPort.height = this.stage.stageHeight;
			
			try{
				this._starling.viewPort = viewPort;
			}
			catch(error:Error){}
		}
	}
}