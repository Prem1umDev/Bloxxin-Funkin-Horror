function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('camHUD.alpha', 1)
end

function onBeatHit()
    if curBeat == 28 then
    doTweenAlpha('hiHUD', 'camHUD', 1, 0.5, linear)
    end
end

function onStepHit()
if curStep == 1536 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,5)
end
end
