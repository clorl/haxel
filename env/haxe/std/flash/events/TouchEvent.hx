package flash.events;

@:require(flash10_1) extern class TouchEvent extends Event {
	@:flash.property var altKey(get,set) : Bool;
	@:flash.property var ctrlKey(get,set) : Bool;
	@:flash.property var isPrimaryTouchPoint(get,set) : Bool;
	@:flash.property var isRelatedObjectInaccessible(get,set) : Bool;
	@:flash.property var localX(get,set) : Float;
	@:flash.property var localY(get,set) : Float;
	@:flash.property var pressure(get,set) : Float;
	@:flash.property var relatedObject(get,set) : flash.display.InteractiveObject;
	@:flash.property var shiftKey(get,set) : Bool;
	@:flash.property var sizeX(get,set) : Float;
	@:flash.property var sizeY(get,set) : Float;
	@:flash.property var stageX(get,never) : Float;
	@:flash.property var stageY(get,never) : Float;
	@:flash.property var touchPointID(get,set) : Int;
	function new(type : String, bubbles : Bool = true, cancelable : Bool = false, touchPointID : Int = 0, isPrimaryTouchPoint : Bool = false, localX : Float = 0./*NaN*/, localY : Float = 0./*NaN*/, sizeX : Float = 0./*NaN*/, sizeY : Float = 0./*NaN*/, pressure : Float = 0./*NaN*/, ?relatedObject : flash.display.InteractiveObject, ctrlKey : Bool = false, altKey : Bool = false, shiftKey : Bool = false) : Void;
	private function get_altKey() : Bool;
	private function get_ctrlKey() : Bool;
	private function get_isPrimaryTouchPoint() : Bool;
	private function get_isRelatedObjectInaccessible() : Bool;
	private function get_localX() : Float;
	private function get_localY() : Float;
	private function get_pressure() : Float;
	private function get_relatedObject() : flash.display.InteractiveObject;
	private function get_shiftKey() : Bool;
	private function get_sizeX() : Float;
	private function get_sizeY() : Float;
	private function get_stageX() : Float;
	private function get_stageY() : Float;
	private function get_touchPointID() : Int;
	private function set_altKey(value : Bool) : Bool;
	private function set_ctrlKey(value : Bool) : Bool;
	private function set_isPrimaryTouchPoint(value : Bool) : Bool;
	private function set_isRelatedObjectInaccessible(value : Bool) : Bool;
	private function set_localX(value : Float) : Float;
	private function set_localY(value : Float) : Float;
	private function set_pressure(value : Float) : Float;
	private function set_relatedObject(value : flash.display.InteractiveObject) : flash.display.InteractiveObject;
	private function set_shiftKey(value : Bool) : Bool;
	private function set_sizeX(value : Float) : Float;
	private function set_sizeY(value : Float) : Float;
	private function set_touchPointID(value : Int) : Int;
	function updateAfterEvent() : Void;
	static final PROXIMITY_BEGIN : String;
	static final PROXIMITY_END : String;
	static final PROXIMITY_MOVE : String;
	static final PROXIMITY_OUT : String;
	static final PROXIMITY_OVER : String;
	static final PROXIMITY_ROLL_OUT : String;
	static final PROXIMITY_ROLL_OVER : String;
	static final TOUCH_BEGIN : String;
	static final TOUCH_END : String;
	static final TOUCH_MOVE : String;
	static final TOUCH_OUT : String;
	static final TOUCH_OVER : String;
	static final TOUCH_ROLL_OUT : String;
	static final TOUCH_ROLL_OVER : String;
	static final TOUCH_TAP : String;
}
