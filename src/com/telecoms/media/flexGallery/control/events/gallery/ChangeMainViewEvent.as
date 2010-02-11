package com.telecoms.media.flexGallery.control.events.gallery
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ChangeMainViewEvent extends CairngormEvent
	{
		public static const CHANGE_MAIN_VIEW:String = 'changeMainView';
		public static const GALLERY_VIEW:String = 'GalleryView';
		public var goTo:String;
		public function ChangeMainViewEvent(goTo:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(CHANGE_MAIN_VIEW, bubbles, cancelable);
			this.goTo = goTo;
		}
		
	}
}