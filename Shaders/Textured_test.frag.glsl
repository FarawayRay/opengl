uniform sampler2D Texture;
uniform lowp float BlendIntensity;
varying mediump vec2 vTexCoord;

uniform int timetime;
uniform vec2 position;
uniform vec2 offset;

const vec2 resolution = vec2(2048., 2048.);

void main()
{
    precision lowp float;

	vec2 _tmpTexCoord = vTexCoord;
	
	_tmpTexCoord.x = position.x/2048. + _tmpTexCoord.x*offset.x/2048.;
	_tmpTexCoord.y = position.y/2048. + _tmpTexCoord.y*offset.y/2048.;

    vec4 color = texture2D(Texture, _tmpTexCoord);
    gl_FragColor.rgba = color.rgba * BlendIntensity;
}
