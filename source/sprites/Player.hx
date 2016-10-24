package sprites;

import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
import flixel.FlxObject;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{
	private var shot:Shot;
	private var shots:FlxTypedSpriteGroup<Shot>;
	private var dirShot:Int = 1;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		loadGraphic(AssetPaths.megaman_moving__png, true, 31, 28);
		
		animation.add("stand", [0, 1, 2], 3, true);
		animation.play("stand");
		
		acceleration.y = Reg.vAcceleration;
		
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.RIGHT, false, false);
		
		shots = new FlxTypedSpriteGroup<Shot>();
		FlxG.state.add(shots);
	}
	
	override public function update(elapsed:Float):Void 
	{
		
		velocity.x = 0;
		//MOVIMIENTO DEL PLAYER
		
		if (FlxG.keys.pressed.RIGHT)
		{
			velocity.x += Reg.hSpeed;
			facing = FlxObject.RIGHT;
			dirShot = 1;
		}
		
		if (FlxG.keys.pressed.LEFT)
		{
			velocity.x -= Reg.hSpeed;
			facing = FlxObject.LEFT;
			dirShot = -1;
		}
		
		if (FlxG.keys.justPressed.SPACE && isTouching(FlxObject.FLOOR))
		{
			velocity.y = -Reg.vSpeed;
		}
		
		if (FlxG.keys.justPressed.A)
		{
			shot = new Shot (x + width/2 + (width/2)*dirShot, y + width / 2,null,(Reg.PSSpeed)*dirShot);
			shots.add(shot);
		}
		super.update(elapsed); 
	}
	
}