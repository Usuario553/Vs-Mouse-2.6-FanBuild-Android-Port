function onCreate()
	-- background shit
	makeLuaSprite('michouse', 'michouse', -600, -300);
	setScrollFactor('michouse', 0.9, 0.9);

	addLuaSprite('michouse', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end