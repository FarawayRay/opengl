uniform sampler2D GlyphTexture;
varying mediump vec2 vTexCoord;
uniform mediump vec4 FontColor;

void main()
{
    precision mediump float;

    float a = texture2D(GlyphTexture, vTexCoord).a;
    float alpha = FontColor.a * a;

    gl_FragColor.rgb = FontColor.rgb * alpha;
    gl_FragColor.a = alpha;
}
