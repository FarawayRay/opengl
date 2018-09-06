#ifdef GL_ES
precision mediump float;
#endif

uniform float time;
varying vec2 surfacePosition;

void main() {
	float t = time * 0.25;
	vec2 p = (surfacePosition*21.);
	
	vec2 v1 = vec2(sin(time*0.261), cos(time*0.841)) * 1.2;
	vec2 v2 = vec2(sin(time*0.774), cos(time*0.274)) * 1.54;
	
	p+= v2;
	float a = atan(p.x,p.y) * 1.;
	float r = length(p*v1) * 0.2;
	
	r = (sin(abs(2.*sin(1.*r-t)-(sin(t*2.4))))) - .8*abs(sin(a*1.5-t*1.7)*sin(r));
	gl_FragColor = vec4(r,abs(r*r*cos(a*5.+t*1.13)),r*cos(a*3.-t*2.77+r+.5*3.1415926),1);
}