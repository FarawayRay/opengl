#ifdef GL_ES
precision mediump float;
#endif

#extension GL_OES_standard_derivatives : enable

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;

void main( void ) {

	vec2 p = ( gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x,resolution.y);
	vec3 destColor = vec3(0.0,0.9,1.3);
	float f = 0.0;
	float T = 3.0 * time;
	for ( float i = 0.0; i < 500.0; i++){
		T += 0.0131415926;
		float c = 16.*pow(sin(T), 3.);//sin(time*3.0 + i * 0.0031415926) * 0.8;
		float s = 13.*cos(T) - 5.*cos(2.*T) - 2.*cos(3.*T) - cos(4.0*T);
		c = 0.05*c; s = -0.05*s;
		f += 0.000005/abs(length(p+vec2(c,s))-i/500000.)*(pow(i,2.0)/1000.0);
		f += 0.000005/abs(length(p+vec2(-c,s))-i/500000.)*(pow(i,2.0)/1000.0);
	}
	
	gl_FragColor = vec4(vec3(destColor*f),1.0);	
}		