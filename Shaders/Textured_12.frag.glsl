#ifdef GL_ES
precision mediump float;
#endif

#extension GL_OES_standard_derivatives : enable

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
varying vec2 surfacePosition;

float DEG2RAG = 0.0174532925199;
#define PI 3.14159265359

mat2 rot = mat2(cos(time),-sin(time), 
		sin(time), cos(time));

float tri(vec2 pos)
{
	pos+=surfacePosition;//+=(2.0*gl_FragCoord.xy - resolution.xy)/max(resolution.x, resolution.y) / 1.0;
	pos*=rot;
	
	float a = dot(pos, vec2(sin( 60.0*DEG2RAG), cos( 60.0*DEG2RAG)));
	float b = dot(pos, vec2(sin(-60.0*DEG2RAG), cos(-60.0*DEG2RAG)));	
	float c = -pos.y;
				
	float result = 0.004/-min(min(0.05-a,0.05-b), 0.05-c);
	return max(result,sign(-result));
}

void main( void ) {
	vec3 c = vec3(0);
	const float imax = 24.;
	for (float i=0.; i<imax; i++) {
		float f = 2.*PI/sin(time*0.1);
		if (i>imax/2.)
			c += abs(vec3(sin(i*f+1.*f),sin(i*f+3.*f),sin(i*f+5.*f))*tri(vec2(cos(i)*.3,sin(i)*.3)));
		else
			c += (vec3(sin(i*f+1.*f),sin(i*f+3.*f),sin(i*f+5.*f))*tri(vec2(cos(i)*.3,sin(i)*.3)));
	}
	gl_FragColor = vec4( c, 1.0 );
}