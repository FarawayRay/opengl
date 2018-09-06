varying mediump vec2 vTexCoord;
varying mediump vec2 sweepCoord;
uniform sampler2D GaugeFullTexture;
uniform sampler2D GaugeZeroTexture;
uniform mediump float sweepAngle;
uniform mediump vec4 emptyColor;
uniform mediump vec4 sweepColor;
varying mediump vec2 centreCoord;
uniform mediump vec2 sweepCutoff;
void main()
{
    precision mediump float;
    vec4 basetexture = texture2D(GaugeZeroTexture,vTexCoord);
    vec4 texture = texture2D(GaugeFullTexture,vTexCoord);
    
    float PI = 3.14;
    float angle = 1.0-(atan(sweepCoord.x,sweepCoord.y) + PI) / (2.*PI);
    angle -= clamp(sweepAngle/360.,0.0,angle);
    angle = clamp(pow(angle,sweepAngle/pow(sweepAngle+10.0,2.0) ),0.0,1.0);
    angle = 1.0-angle;

    vec4 color = mix(basetexture,texture,angle);
    
    gl_FragColor = color;
}