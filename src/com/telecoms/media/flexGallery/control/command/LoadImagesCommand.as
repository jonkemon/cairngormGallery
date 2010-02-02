package com.telecoms.media.flexGallery.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.flexGallery.control.events.gallery.LoadImagesEvent;
	
	import mx.controls.Alert;

	public class LoadImagesCommand implements ICommand
	{
		public function execute(event:CairngormEvent):void
		{
			LoadImages(event as LoadImagesEvent);
		}
		private function LoadImages(event:LoadImagesEvent):void
		{
			Alert.show('LoadImages Event has been triggered!');
		}
	}
}