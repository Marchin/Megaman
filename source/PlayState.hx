package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import sprites.Light;
import sprites.Player;

class PlayState extends FlxState
{
	private var platform:FlxSprite;
	private var player:sprites.Player;
	private var light:Light;
	
	override public function create():Void
	{
		super.create();
		
		//PLATAFORMA
		platform = new FlxSprite(0, 50);
		platform.loadGraphic(AssetPaths.plataforma__png);
		//platform.makeGraphic(FlxG.width, 32, 0xFFFFFFFF);
		platform.immovable = true;
		
		player = new Player(128, 0);
		FlxG.camera.follow(player);
		
		light = new Light(150, 0) ;
		add(light);
		
		add(platform);
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		
		FlxG.collide(platform, player);
		super.update(elapsed);
	}
}
