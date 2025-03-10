function onCreate()
    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
end
function onCreatePost()
for _, element in ipairs({'iconP1', 'healthBar'}) do
    setProperty(element .. '.flipX', true)
end
end
function onUpdatePost()
local barX = getProperty('healthBar.x')
local barCenter = barX + getProperty('healthBar.width') * .5
setProperty('iconP1.x', barX - getProperty('iconP1.x') + barCenter + getProperty('iconP1.frameWidth'))
setProperty('iconP2.x', 190)
    if curSection >= 56 then
        callMethod('updateIconsPosition', {''})
        for _, element in ipairs({'iconP1', 'healthBar'}) do
            setProperty(element .. '.flipX', false)
        end
        setProperty('iconP1.x', getProperty('healthBar.barCenter')+(150*getProperty('iconP1.scale.x')-150)/2-iconOffset)
        setProperty('iconP2.x', getProperty('healthBar.barCenter')+(150*getProperty('iconP2.scale.x')-150)/2-iconOffset)
    end        
end

function onBeatHit()
    if curBeat == 218 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 220 then
        setHealth(50/50)
        
    end
    if curBeat == 222 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end
end

function opponentNoteHit(_, _, type)
    if getHealth() >= 0.01 then
        setHealth(getHealth() - 0.01)
    end
end