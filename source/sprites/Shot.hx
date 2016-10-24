package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Shot extends FlxSprite
{

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset, ?velX:Float = 0, ?velY:Float = 0, ?acelX:Float = 0, ?acelY:Float = 0 ) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(4, 1, 0xFFFF0000);
		
		velocity.x =velX;
		velocity.y = velY;
		
		acceleration.x = acelX;
		acceleration.y = acelY;
		
		
	}
	
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed); 
		
	}
	
	
}