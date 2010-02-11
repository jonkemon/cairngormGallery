package com.telecoms.media.flexGallery.control.events.gallery
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class XMLLoadedEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "LoadImages";
		public function XMLLoadedEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
		
	}
}