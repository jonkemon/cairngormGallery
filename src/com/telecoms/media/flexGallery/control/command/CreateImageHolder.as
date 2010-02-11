package com.telecoms.media.flexGallery.control.command
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import mx.controls.Image;

	public class CreateImageHolder extends Image
	{
		public function CreateImageHolder(url:String)
		{
			super();
			
			source = url;
			scaleContent = false;
			height = 100;
			width = 200; 
			
			/* var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onImageLoaded);
			loader.load(new URLRequest(url));
			
			buttonMode = true;
			useHandCursor = true; */
		}
		private function onImageLoaded(event:Event):void
		{
			
		}
	}
}