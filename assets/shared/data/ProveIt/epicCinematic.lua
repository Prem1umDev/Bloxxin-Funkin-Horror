function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    setProperty('bigblackbartop.y', -500)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    setProperty('bigblackbarbottom.y', 500)
    addLuaSprite('bigblackbarbottom', true)
end

function onStepHit()
    if curStep == 272 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.1, 'cubeOut')
        noteTweenY('hiNotes1', 0, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes2', 1, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes3', 2, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes4', 3, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes5', 4, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes6', 5, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes7', 6, 150, 0.1, 'cubeOut');
        noteTweenY('hiNotes8', 7, 150, 0.1, 'cubeOut');
    end

    if curStep == 400 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 0.5, 'cubeOut')
        noteTweenY('hiNotes1', 0, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes2', 1, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes3', 2, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes4', 3, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes5', 4, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes6', 5, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes7', 6, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes8', 7, 175, 0.25, 'cubeOut');
    end

    if curStep == 416 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 0.5, 'cubeOut')
        noteTweenY('hiNotes1', 0, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes2', 1, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes3', 2, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes4', 3, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes5', 4, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes6', 5, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes7', 6, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes8', 7, 50, 0.25, 'cubeOut');
    end

    if curStep == 672 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.5, 'cubeOut')
        noteTweenY('hiNotes1', 0, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes2', 1, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes3', 2, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes4', 3, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes5', 4, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes6', 5, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes7', 6, 150, 0.5, 'cubeOut');
        noteTweenY('hiNotes8', 7, 150, 0.5, 'cubeOut');
    end

    if curStep == 704 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 0.5, 'cubeOut')
        noteTweenY('hiNotes1', 0, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes2', 1, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes3', 2, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes4', 3, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes5', 4, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes6', 5, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes7', 6, 175, 0.25, 'cubeOut');
        noteTweenY('hiNotes8', 7, 175, 0.25, 'cubeOut');
    end

    if curStep == 720 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 0.5, 'cubeOut')
        noteTweenY('hiNotes1', 0, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes2', 1, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes3', 2, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes4', 3, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes5', 4, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes6', 5, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes7', 6, 50, 0.25, 'cubeOut');
        noteTweenY('hiNotes8', 7, 50, 0.25, 'cubeOut');
    end

    if curStep == 928 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 3, 'cubeOut')
    end

    if curStep == 960 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'cubeOut')
    end
end
