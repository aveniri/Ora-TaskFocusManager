package com.aveniri.utils
{
	[Bindable]
	public class ModelLocator
	{	
		private static var instance:ModelLocator;
		
		public static function getInstance():ModelLocator
		{
			if(instance==null)	
				instance = new ModelLocator();
			return instance;
		}	
		
		public function ModelLocator()
		{
			if(instance!=null) 
				throw new Error("Error: Singletons can only be instantiated via getInstance() method!");
			ModelLocator.instance = this;
		}
		
		//GLOBAL VARIABLES
		
	}
}