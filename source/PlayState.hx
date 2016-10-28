package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import sprites.Light;
import sprites.Player;
import flixel.addons.editors.ogmo.FlxOgmoLoader;
import flixel.tile.FlxTilemap;
import flixel.FlxObject;

class PlayState extends FlxState
{
	private var platform:FlxSprite;
	private var player:sprites.Player;
	private var light:Light;
	private	var loader:FlxOgmoLoader ;
	private var tilemap0:FlxTilemap;
	private var tilemap1:FlxTilemap;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.mouse.visible = false;
		
		loader = new FlxOgmoLoader(AssetPaths.level__oel);
		tilemap0 = loader.loadTilemap(AssetPaths.tiles__png, 32,32, "NewLayer0");
		tilemap1 = loader.loadTilemap(AssetPaths.tiles__png, 32,32, "NewLayer1");
		FlxG.worldBounds.set(0, 0, tilemap0.width, tilemap0.height);
		
		
		tilemap0.setTileProperties(0, FlxObject.NONE);
		tilemap0.setTileProperties(1, FlxObject.NONE);
		tilemap0.setTileProperties(2, FlxObject.ANY);
		tilemap0.setTileProperties(3, FlxObject.NONE);
		
		tilemap1.setTileProperties(0, FlxObject.NONE);
		tilemap1.setTileProperties(1, FlxObject.NONE);
		tilemap1.setTileProperties(2, FlxObject.ANY);
		tilemap1.setTileProperties(3, FlxObject.NONE);
		
		/*//PLATAFORMA
		platform = new FlxSprite(0, 50);
		platform.loadGraphic(AssetPaths.plataforma__png);
		//platform.makeGraphic(FlxG.width, 32, 0xFFFFFFFF);
		platform.immovable = true;*/
		
		
		player = new Player();
		
		loader.loadEntities(placeEntities, "entities");
		light = new Light(150, 0) ;
		add(light);
		
		//add(platform);
		FlxG.camera.follow(player);
		add(tilemap0);
		add(tilemap1);
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		//FlxG.collide(platform, player);
		FlxG.collide(tilemap0, player);
		FlxG.collide(tilemap1, player);
		super.update(elapsed);
	}
	
	private function placeEntities(entityName:String, entityData:Xml):Void
	{
		if (entityName == "player")
		{
			player.x = Std.parseInt(entityData.get("x"));
			player.y = Std.parseInt(entityData.get("y"));
		}
	
	}
}
