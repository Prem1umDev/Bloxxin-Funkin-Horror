function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    addLuaSprite('bigblackbarbottom', true)
end

function onSongStart()
    doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
end

function onBeatHit()
    if curBeat == 64 or curBeat == 224 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'cubeOut')
    end

    if curBeat == 196 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
    end
end