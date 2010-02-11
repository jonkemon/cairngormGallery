package com.telecoms.media.flexGallery.model
{
	[Bindable]
	public class PhotosModelLocator
	{
		static public var __instance:PhotosModelLocator=null;
		public var photoAdresses:XML = new XML;
		public var photoObjects:Array = new Array;
		
		static public function getInstance():PhotosModelLocator
		{
			if(__instance == null)
			{
				__instance = new PhotosModelLocator();
			}
			return __instance;
		}
	}	
}