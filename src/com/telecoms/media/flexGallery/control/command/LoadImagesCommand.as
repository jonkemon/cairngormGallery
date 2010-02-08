package com.telecoms.media.flexGallery.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.flexGallery.control.delegates.LoadImagesDelegate;
	import com.telecoms.media.flexGallery.control.events.gallery.LoadImagesEvent;
	
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class LoadImagesCommand implements ICommand
	{
		private function LoadImages(event:LoadImagesEvent):void
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadImagesDelegate = new LoadImagesDelegate(responder);
			delegate.loadPhotos();
		}
		private function onFault(event:FaultEvent):void
		{
			trace('Failed');
		}
		private function onResults(event:ResultEvent):void
		{
			trace('Gotcha!');
		}
	}
}