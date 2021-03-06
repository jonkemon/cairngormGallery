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

	public class ShowButtonsCommand implements ICommand
	{		
		private var model:PhotosModelLocator = PhotosModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			trace('Buttons Show!');
			model.buttonState = true;
		}
	}
}