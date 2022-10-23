
function onCreate()
	fps = getPropertyFromClass('ClientPrefs', 'framerate')
	stage = 'stages/Street1'

 makeLuaSprite('Start', 'loading/street-misery', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

	if songName == 'Suicide' then
		stage = 'stages/Street2'
 
makeLuaSprite('Start', 'loading/street-suicide', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

	end
	if songName == 'Happy Ride' then
		stage = 'stages/Street3'

 makeLuaSprite('Start', 'loading/street-happyride', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

	end

	for stageBG = 0,2 do
		
		makeLuaSprite('Street'..stageBG,stage,-3000 - (5500 * stageBG),-270)
		scaleObject('Street'..stageBG,2.2,2.2)
		addLuaSprite('Street'..stageBG,false)

makeAnimatedLuaSprite('legs','suicidelegs',90,772)
        addAnimationByPrefix('legs','legspog','Patas',24,true)
        objectPlayAnimation('legs','legspog',false)
        setScrollFactor('legs', 1, 1);
        scaleObject('legs', 0.6, 0.6);
        addLuaSprite('legs', false);

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

	end
end
function onCreatePost()
	bgSpeed = (-1/9 * fps) + 36.666
end

function onUpdate()
	for bgCount = 0,2 do
		setProperty('Street'..bgCount..'.x',getProperty('Street'..bgCount..'.x') + bgSpeed)
	end
	if getProperty('Street1.x') > -3000 + getProperty('Street1.width')then
		for backGroundPosition = 0,2 do
			setProperty('Street'..backGroundPosition..'.x',-3000 + (getProperty('Street'..backGroundPosition..'.width') * -backGroundPosition))
		end
	end
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'framerate',fps)
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 2, 'quintOut');
 
end
