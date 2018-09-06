uniform float time;
const vec2 resolution = vec2(1920., 720.);

float qdist(vec2 p1, vec2 p2) {
	vec2 ratio=vec2(1.0,resolution.y/resolution.x);
	vec2 t = (p1-p2)*ratio;
	t = t*t;
	return t.x + t.y;
}

void main( void ) {

	vec2 position = ( gl_FragCoord.xy / resolution.xy );
	
	vec2 p[3];
	p[0] = vec2(sin( time/4.0)/2.0+0.5, cos(time/4.0)/2.0+0.5);
	p[1] = vec2(cos(-time/1.0)/2.0+0.5, sin(time/1.0)/3.0+0.5);
	p[2] = vec2(sin( time/2.0)/2.0+0.5, cos(time/2.0)/2.0+0.5);
	
	vec3 acc = vec3(1.0);
	
	for (int i = 0; i < 3; i++){
		acc += (0.1 / qdist(position, p[i]))*vec3(p[i],sin(time));
	}
	
	acc = acc * 1. - 10.;
	//vec4 colorize = vec4(0.5, 0.8, 1.0, 1.0);
	gl_FragColor = vec4(acc, 1.0) ;

	}
