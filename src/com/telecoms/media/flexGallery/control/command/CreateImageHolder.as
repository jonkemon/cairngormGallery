package com.telecoms.media.flexGallery.control.command
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;

	public class CreateImageHolder extends Sprite
	{
		public function CreateImageHolder(url:String)
		{
			super();
			
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onImageLoaded);
			loader.load(new URLRequest(url));
		}
		private function onImageLoaded(event:Event):void
		{
			
		}
	}
}