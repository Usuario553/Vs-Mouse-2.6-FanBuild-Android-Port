function onCreate()
	-- background shit
	makeLuaSprite('echo', 'echo', -300, -180);
	setScrollFactor('echo', 1, 1);
	scaleObject('echo', 1.7, 1.7);
	

	addLuaSprite('echo', false);

	makeLuaSprite('G y D', 'G y D', 850, 1750);
	addLuaSprite('G y D',true)
        setLuaSpriteScrollFactor('G y D', 1, 1);

 makeLuaSprite('G y D','G y D',200,1250)
      

        addLuaSprite('G y D', true);

	makeLuaSprite('tran','tran',09,0)
 makeAnimatedLuaSprite('tran', 'tran', -09,0)
	addAnimationByPrefix('tran', 'tran', 'tran', 24, true)
        setScrollFactor('tran', 0, 0);
        setObjectCamera('tran', 'other');
        scaleObject('tran', 0.999, 0.999);
        addLuaSprite('tran', true);

makeLuaSprite('TVoverlay','TVoverlay',-4,0)
        setScrollFactor('TVoverlay', 0, 0);
        setObjectCamera('TVoverlay', 'other');
        scaleObject('TVoverlay', 0.999, 0.999);
        addLuaSprite('TVoverlay', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
