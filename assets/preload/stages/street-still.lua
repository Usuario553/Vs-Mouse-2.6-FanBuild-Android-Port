function onCreate()
	
        makeAnimatedLuaSprite('Run','bg/BackgroundLeft', -350, -150)
        addAnimationByPrefix('Run','Running','Background2 Moving2',0,true)
        objectPlayAnimation('Run','Running',false)
        setScrollFactor('Run', 1, 1);
        scaleObject('Run', 2, 2);
        addLuaSprite('Run', false);
end
	