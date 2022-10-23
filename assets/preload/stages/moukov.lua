local bit = 2

function onCreate()
    makeLuaSprite('fg1', 'fg1', -440, -158)
    scaleObject('fg1', 0.9, 0.9)
    addLuaSprite('fg1')

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

end



