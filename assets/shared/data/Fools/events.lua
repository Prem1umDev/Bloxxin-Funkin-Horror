function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 1)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', true)
end

function onSongStart()
    doTweenAlpha('black','black',0,2,linear)
end

function onUpdatePost()
    noteTweenX('noteX1', 0, -1000, 0.2, 'linear')
    noteTweenX('noteX2', 1, -1000, 0.2, 'linear')
    noteTweenX('noteX3', 2, -1000, 0.2, 'linear')
    noteTweenX('noteX4', 3, -1000, 0.2, 'linear')
    if curSection > 18 then
        doTweenAlpha('byeHUD6', 'songIcon', 0.5, 0.5, 'linear')
        doTweenAlpha('byeHUD7', 'timeTxt', 0.5, 0.5, 'linear')
    end
    if curSection > 26 then
        doTweenAlpha('byeHUD6', 'songIcon', 1, 1, 'linear')
        doTweenAlpha('byeHUD7', 'timeTxt', 1, 1, 'linear')
    end
end

function onBeatHit()
    if curBeat == 30 or curBeat == 100 then
        setProperty('black.visible', false)
    end
    if curBeat == 32 then
        doTweenAlpha('black','black',1,0.1,linear)
    end
    if curBeat == 72 then
        setProperty('black.visible', true)
        doTweenAlpha('byeHUD1', 'healthBar', 0, 0.5, 'linear')
        doTweenAlpha('byeHUD2', 'healthBarAround', 0, 0.5, 'linear')
        doTweenAlpha('byeHUD3', 'iconP1', 0, 0.5, 'linear')
        doTweenAlpha('byeHUD4', 'iconP2', 0, 0.5, 'linear')
        doTweenAlpha('byeHUD5', 'scoreTxt', 0, 0.5, 'linear')
        doTweenAlpha('black','black',0,10,linear)
    end
    if curBeat == 102 then
        doTweenAlpha('black','black',0.5,0.1,linear)
    end
    if curBeat == 104 then
        doTweenAlpha('byeHUD1', 'healthBar', 1, 1, 'linear')
        doTweenAlpha('byeHUD2', 'healthBarAround', 1, 1, 'linear')
        doTweenAlpha('byeHUD3', 'iconP1', 1, 1, 'linear')
        doTweenAlpha('byeHUD4', 'iconP2', 1, 1, 'linear')
        doTweenAlpha('byeHUD5', 'scoreTxt', 1, 1, 'linear')
    end 
    if curBeat == 168 then
        setProperty('black.visible', true)
    end
    if curBeat == 200 then
        setProperty('black.visible', false)
    end
end