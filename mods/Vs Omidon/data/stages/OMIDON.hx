
class OMIDON
{
	public function createBackgroundSprites(bgName:String, revertedBG:Bool):FlxTypedGroup<BGSprite>
	{
		var sprites:FlxTypedGroup<BGSprite> = new FlxTypedGroup<BGSprite>();
		var bgZoom:Float = 0.7;
		var stageName:String = '';
		switch (bgName)
		{
			case 'OMIDON':
				bgZoom = 0.35;
				stageName = 'OMIDON';

				var BG3:BGSprite = new BGSprite('BG3', -2400, -1400, 0.1, 0.1);
         		BG3.setGraphicSize(Std.int(BG3.width * 7));
				voidShader(BG3);
				sprites.add(BG3);
				add(BG3);

				var BG0:BGSprite = new BGSprite('BG0', -1500, -1700, 0.3, 0.3);
				BG0.setGraphicSize(Std.int(BG0.width * 3));
				sprites.add(BG0);
				add(BG0);

				var BG2:BGSprite = new BGSprite('BG2', -2400, -1100, 0.85, 0.85);
				BG2.scale.set((1 / bgZoom) * 5, 3 / bgZoom);
				sprites.add(BG2);
				add(BG2);

				var BG2X:BGSprite = new BGSprite('BG1', -2400, -500, 0.3, 0.3);
				BG2X.scale.set((1 / bgZoom) * 5, 3 / bgZoom);
				sprites.add(BG2X);
				add(BG2X);

				var BG1:BGSprite = new BGSprite('BG1', -2400, -1400, 0.3, 0.3);
				BG1.setGraphicSize(Std.int(BG0.width * 4));
				sprites.add(BG1);
				add(BG1);
		}
	}
}