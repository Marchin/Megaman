package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Light extends FlxSprite
{
	private var shot:Shot;
	private var shots:FlxTypedSpriteGroup<Shot>;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		loadGraphic(AssetPaths.light__png,true,32,32);
		
		animation.add("light", [0, 1], 3, true);
		animation.play("light");
		
		shots = new FlxTypedSpriteGroup<Shot>();
		FlxG.state.add(shots);
	}
	
	override public function update(elapsed:Float):Void 
	{
		if (FlxG.keys.justPressed.D)
		{
			shot = new Shot (x , y + width / 2, null, -200, 0, 200, 100);
			shot.loadGraphic(AssetPaths.lightshot__png, true, 8, 8);
			shot.animation.add("lightShot", [0, 1], 3, true);
			shot.animation.play("lightShot");
			shots.add(shot);
		}
		super.update(elapsed); 
	}
	
}