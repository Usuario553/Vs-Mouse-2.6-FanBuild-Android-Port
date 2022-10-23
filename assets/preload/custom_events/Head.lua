length = 2.9
width = length/1.333
function onEvent(n,v1,v2)
	if n == "Head" then
		if not lowQuality then
			makeAnimatedLuaSprite('head','effects/Head', -90,-50)
			addAnimationByPrefix('head','headpog','Head Head',22,true)
			objectPlayAnimation('head','headpog',false)
			setScrollFactor('head', 0, 0);
			scaleObject('head', length, width);
			addLuaSprite('head', true);
			if v1 == 'stop' then
				removeLuaSprite('head')
			end
		end
		
	end
end