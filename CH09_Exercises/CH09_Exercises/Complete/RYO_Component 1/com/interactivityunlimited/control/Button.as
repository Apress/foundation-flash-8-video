﻿class com.interactivityunlimited.control.Button extends MovieClip {	var __data:String;		var ourBroadcaster:Object;		var hitArea:MovieClip;			// our constructor -- automatically called as soon as we call AttachMovie	function Button() {		// First, set this object up to be a broadcaster		ourBroadcaster = new Object();		AsBroadcaster.initialize(ourBroadcaster);				hitArea._alpha = 0;	}		[Inspectable(type='String', defaultValue='Set Data')]	public function get data():String {		return __data;	}		public function set data( newData:String ):Void {		__data = newData;	}		public function onPress() {		ourBroadcaster.broadcastMessage( "selectMovie", __data );	}		public function addListener( theListener:Object ):Boolean {		return ourBroadcaster.addListener( theListener );	}		public function removeListener( theListener:Object ):Boolean {		return ourBroadcaster.removeListener( theListener );	}}