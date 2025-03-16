package shaders;

import flixel.system.FlxAssets.FlxShader;

class BlurShader extends FlxShader
{
    @:glFragmentSource('
        #pragma header

        #define iResolution vec3(openfl_TextureSize, 0.)
        #define iChannel0 bitmap
        #define texture flixel_texture2D

        // end of ShadertoyToFlixel header

        void mainImage( out vec4 fragColor, in vec2 fragCoord )
        {
        float Pi = 6.28318530718; // Pi*2

        // GAUSSIAN BLUR SETTINGS {{{
        float Directions = 16.0; // BLUR DIRECTIONS (Default 16.0 - More is better but slower)
        float Quality = 10.0; // BLUR QUALITY (Default 4.0 - More is better but slower)
        float Size = 8.0; // BLUR SIZE (Radius)
        // GAUSSIAN BLUR SETTINGS }}}

        vec2 Radius = Size/iResolution.xy;

        // Normalized pixel coordinates (from 0 to 1)
        vec2 uv = fragCoord/iResolution.xy;
        // Pixel colour
        vec4 Color = texture(iChannel0, uv);

        // Blur calculations
        for( float d=0.0; d<Pi; d+=Pi/Directions)
        {
            for(float i=1.0/Quality; i<=1.0; i+=1.0/Quality)
            {
                Color += texture( iChannel0, uv+vec2(cos(d),sin(d))*Radius*i);		
            }
        }

        // Output to screen
        Color /= Quality * Directions - 15.0;
        fragColor =  Color;
        }

        void main() {
        mainImage(gl_FragColor, openfl_TextureCoordv*openfl_TextureSize);
        }
    ')

    public function new() {
        super();
    }
}