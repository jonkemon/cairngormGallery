package com.telecoms.media.flexGallery.model
{
	[Bindable]
	public class ModelLocator
	{
		static public var __instance:ModelLocator=null;
		
		static public function getInstance():ModelLocator
		{
			if(__instance == null)
			{
				__instance = new ModelLocator();
			}
			return __instance;
		}
	}	
}