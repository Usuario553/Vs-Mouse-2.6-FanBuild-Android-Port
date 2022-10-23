dadX = 105
dadY = 730
function onCreate()
	addCharacterToList('suicidenew6')
	fps = getPropertyFromClass('ClientPrefs', 'framerate')
	stage = 'stages/Street3'

	for stageBG = 0,2 do
		
		makeLuaSprite('Street'..stageBG,stage,-1000 + (5500 * stageBG),-270)
		scaleObject('Street'..stageBG,2.2,2.2)
		addLuaSprite('Street'..stageBG,false)
	end

	makeAnimatedLuaSprite('legs','suicidelegs',100,780)
        addAnimationByPrefix('legs','legspog','Patas',24,true)
        objectPlayAnimation('legs','legspog',false)
        setScrollFactor('legs', 1, 1);
        scaleObject('legs', 0.6, 0.6);
        addLuaSprite('legs', false);

        makeAnimatedLuaSprite('SMpantallaload','SMpantalla',-90,-90)
        addAnimationByPrefix('SMpantallaload','SMpantallapog','pantalla',47,true)
        objectPlayAnimation('SMpantallaload','SMpantallapog',false)
        setScrollFactor('SMpantallaload', 1, 1);
        setObjectCamera('SMpantallaload', 'other');
        scaleObject('SMpantallaload', 0.8, 0.8);
        addLuaSprite('SMpantallaload', true);

        makeAnimatedLuaSprite('stat','daSTAT2',-90,-90)
        addAnimationByPrefix('stat','statpog','staticFLASH',47,true)
        objectPlayAnimation('stat','statpog',false)
        setScrollFactor('stat', 1, 1);
        setObjectCamera('stat', 'other');
        scaleObject('stat', 4, 4);
        addLuaSprite('stat', true);

        makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);

	  makeLuaSprite('Start', 'loading/street-insanitypsychosis', 0, 0);
	  scaleObject('Start', 1.0, 1.0);
	  setObjectCamera('Start', 'other');
	  addLuaSprite('Start', true);




end
function onCreatePost()
	bgSpeed = (-1/9 * fps) + 36.666
end

function onUpdate()
	if dadName == 'suicidenew4' then
		setProperty('legs.visible',true)
	else
		setProperty('legs.visible',false)
	end
	
	if dadName == 'suicidenew6' then
		setCharacterX('dad',-600)
		for bgCount = 0,2 do
			setProperty('Street'..bgCount..'.x',getProperty('Street'..bgCount..'.x') - bgSpeed)
		end
		if getProperty('Street1.x') < -1000 - getProperty('Street1.width')then
			for backGroundPosition = 0,2 do
				setProperty('Street'..backGroundPosition..'.x',-1000 + (getProperty('Street'..backGroundPosition..'.width') * backGroundPosition))
			end
		end
	end
	if dadName == 'suicidenew4' then
		for bgCount = 0,2 do
			setProperty('Street'..bgCount..'.x',getProperty('Street'..bgCount..'.x') + bgSpeed)
		end
		if getProperty('Street1.x') > -3000 + getProperty('Street1.width')then
			for backGroundPosition = 0,2 do
				setProperty('Street'..backGroundPosition..'.x',-3000 + (getProperty('Street'..backGroundPosition..'.width') * -backGroundPosition))
			end
		end
	end
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'framerate',fps)
end
function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 2, 'quintOut');
 
end