local xx = 700;
local yy = 470;
local xx2 = 1300;
local yy2 = 640;
local ofs = 90;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	
	makeLuaSprite('disney', 'stages/disney', -200, -150);
	addLuaSprite('disney',false)
        setLuaSpriteScrollFactor('bg', 1, 1);

	makeLuaSprite('trees', 'stages/tree', -200, -100);
	addLuaSprite('trees',true)
        setLuaSpriteScrollFactor('trees', 1, 1);

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
	
function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Laugh' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end


function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 2, 'quintOut');
 
end

	
