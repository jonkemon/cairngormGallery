package com.telecoms.media.flexGallery.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.flexGallery.control.delegates.LoadImagesDelegate;
	import com.telecoms.media.flexGallery.model.PhotosModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	[Bindable]
	public class LoadImagesCommand implements ICommand
	{		
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadImagesDelegate = new LoadImagesDelegate(responder);
			delegate.loadPhotos();
		}
		private function onFault(event:FaultEvent):void
		{
			Alert.show('No photos were found...');
		}
		private function onResults(event:ResultEvent):void
		{
			var model:PhotosModelLocator = PhotosModelLocator.getInstance();
			model.photoAdresses = event.token.result as XML;
			
			var totalImages:int = new int;
			totalImages = model.photoAdresses.image.length();
			
			for(var i:int=0;i<totalImages;i++)
			{
				trace(model.photoAdresses.image[i].url);
				var photo:CreateImageHolder = new CreateImageHolder(model.photoAdresses.image[i].url);
				photo.name = "photo"+i;
				trace(photo.name);
				model.photoObjects.push(photo.name);
			};
			trace(model.photoObjects);
		}
	}
}