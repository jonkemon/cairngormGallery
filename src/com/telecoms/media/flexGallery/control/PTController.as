package com.telecoms.media.flexGallery.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.flexGallery.control.events.gallery.LoadImagesEvent;
	import com.telecoms.media.flexGallery.control.command.LoadImagesCommand;
	
	import com.telecoms.media.flexGallery.control.events.gallery.XMLLoadedEvent;
	import com.telecoms.media.flexGallery.control.command.XMLLoadedCommand;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadImagesEvent.EVENT_ID, LoadImagesCommand);
		}
		
	}
}