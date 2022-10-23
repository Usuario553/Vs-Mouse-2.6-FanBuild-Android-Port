function onCreate()	
	precacheImage('effects/screenstatic')
	makeAnimatedLuaSprite('static', 'effects/screenstatic', 0, 0);
	addAnimationByPrefix('static', 'stat', 'screenSTATIC', 24, true);
	setObjectCamera('static', 'camother')
	addLuaSprite('static', true);
	setProperty('static.alpha', 0);
end
function onEvent(name, value1, value2)
	if name == 'static' then
		local var v1 = tonumber(value1)
		setProperty('static.alpha', 1);
		objectPlayAnimation('static', 'stat');
		runTimer('removestatic', v1, 1);
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removestatic' then
		setProperty('static.alpha', 0);
	end
end