#ifdef GL_ES
precision mediump float;
#endif

#extension GL_OES_standard_derivatives : enable

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;

// What the hell is this even
// - WAHA.06x36^SVatG

void main( void ) {

	vec2 position = (2.0 * gl_FragCoord.xy - resolution.xy) / min(resolution.x, resolution.y) * 1.6;
	float fade = 1.0;
	float r = length(position);
	if(r < 1.0) {
		float r2 = asin(r);
		position = position * r2 / r / 3.14 * 2.0;
		fade = 1.0 - pow(r, 4.0);
	} else {
		position /= (r - 0.1);
		fade = exp(4.0 * (-r + 1.0));
	}

	float t1 = 0.35 * time;
	float t2 = 0.2 * time;
	position += vec2(cos(t2), sin(t2));
	position = mat2(cos(t1), sin(t1), -sin(t1), cos(t1)) * position;
	float t3 = 0.21 * time;
	float t4 = 0.16 * time;
	position += vec2(cos(t3), sin(t3));
	position = mat2(cos(t4), sin(t4), -sin(t4), cos(t4)) * position;

	position *= 15.0;
	float t = sin(position.x) * 3.0 + sin(position.y);
	
	vec3 A = vec3(0.5);
	vec3 B = vec3(0.5);
	vec3 C = vec3(1.0, 0.7, 0.4) * 0.2;
	vec3 D = vec3(0.1, 0.15, 0.40);
	vec3 colour = A + B * cos(6.28318 * (C * t + D));
	colour = pow(colour, vec3(5.0)) * 6.0;

	gl_FragColor = vec4(colour * fade, 1.0);
}