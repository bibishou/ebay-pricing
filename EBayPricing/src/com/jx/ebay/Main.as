package com.jx.ebay
{
	import feathers.controls.PanelScreen;
	import feathers.events.FeathersEventType;
	import feathers.layout.AnchorLayout;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.Quad;
	import starling.events.Event;
	
	public class Main extends PanelScreen
	{
		public function Main()
		{
			super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		
		private function initializeHandler(e:Event):void
		{
			new MetalWorksMobileTheme();
			
			this.layout = new AnchorLayout();
			this.headerProperties.title = "EbayPricingTool";
			
			
		}
	}
}