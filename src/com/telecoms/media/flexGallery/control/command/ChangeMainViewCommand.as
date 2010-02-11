package com.telecoms.media.flexGallery.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.flexGallery.control.events.gallery.ChangeMainViewEvent;
	import com.telecoms.media.flexGallery.model.PhotosModelLocator;

	public class ChangeMainViewCommand implements ICommand
	{
		private var model:PhotosModelLocator = PhotosModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			var evt:ChangeMainViewEvent = event as ChangeMainViewEvent;
			this.model.photoAdresses = evt.goTo;
		}
		
	}
}