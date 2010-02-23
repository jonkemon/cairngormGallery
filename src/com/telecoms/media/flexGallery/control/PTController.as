package com.telecoms.media.flexGallery.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.flexGallery.control.command.HideButtonsCommand;
	import com.telecoms.media.flexGallery.control.command.LoadImagesCommand;
	import com.telecoms.media.flexGallery.control.command.ShowButtonsCommand;
	import com.telecoms.media.flexGallery.control.events.gallery.HideButtonsEvent;
	import com.telecoms.media.flexGallery.control.events.gallery.LoadImagesEvent;
	import com.telecoms.media.flexGallery.control.events.gallery.ShowButtonsEvent;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadImagesEvent.EVENT_ID, LoadImagesCommand);
			addCommand(ShowButtonsEvent.EVENT_ID, ShowButtonsCommand);
			addCommand(HideButtonsEvent.EVENT_ID, HideButtonsCommand);
		}
		
	}
}