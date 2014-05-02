package com.aveniri.utils
{
	import flash.events.Event;
	
	public final class QuickDataEvent extends Event
	{
		public static const QUICK_DATA:String = "quickData";
		
		private var _quickData:*;
		
		public function QuickDataEvent(type:String, data:*=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_quickData = data;
		}

		public function get data():*
		{
			return _quickData;
		}

		public function set data(value:*):void
		{
			_quickData = value;
		}

		override public function clone():Event
		{
			return new QuickDataEvent(type, _quickData, bubbles, cancelable);
		}
	}
}