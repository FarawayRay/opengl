#ifdef GL_ES
precision mediump float;
#endif

uniform float time;
uniform vec2 resolution;

void main( void ) {
    
    float sum = 0.0;
    float size = resolution.x / 12.0;
    float g = 0.93;
    int num = 200;
    for (int i = 0; i < 500; ++i) {
        vec2 position = resolution / 2.0 + sin(time);
        position.x += dot(tan(time), tan(time)) * sin(time / 200. + .333 * float(i) + time    * .01) * resolution.x * .05 / 10.;
        position.y += dot(sin(time), sin(time)) / tan(time / 20000. + 1.414 * float(i) - time * .01) * resolution.y * .05 / 10.;
        
        float dist = length(gl_FragCoord.xy - position);
        
        sum += size / pow(dist, g) / pow(dist, g) / .5;
    }
    
    vec4 color = vec4(0,0,1,1);
    float val = sum / float(num);
    color = vec4(0, val*0.35, val+abs(sin(time))*.1, 1);
    
    gl_FragColor = vec4(color);
}