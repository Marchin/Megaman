package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/level/level.oel", "assets/level/level.oel");
			type.set ("assets/level/level.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/level/New Project.oep", "assets/level/New Project.oep");
			type.set ("assets/level/New Project.oep", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/level/tiles.png", "assets/level/tiles.png");
			type.set ("assets/level/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/level/Unsaved Level.oel", "assets/level/Unsaved Level.oel");
			type.set ("assets/level/Unsaved Level.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/light.png", "assets/light.png");
			type.set ("assets/light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/lightshot.png", "assets/lightshot.png");
			type.set ("assets/lightshot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/megamanmoving.png", "assets/megamanmoving.png");
			type.set ("assets/megamanmoving.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/megamanmoving3.png", "assets/megamanmoving3.png");
			type.set ("assets/megamanmoving3.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/megamanmoving4.png", "assets/megamanmoving4.png");
			type.set ("assets/megamanmoving4.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/plataforma.png", "assets/plataforma.png");
			type.set ("assets/plataforma.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
