function onCreate()
makeLuaSprite('disney', 'bgs/disney', -800, -550);
scaleLuaSprite('disney', 2.2, 2.2); 
addLuaSprite('disney', false);

makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);

makeLuaSprite('tran','tran',09,0)
 makeAnimatedLuaSprite('tran', 'tran', 1,0)
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

end
