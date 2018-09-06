attribute vec3 kzPosition;
attribute vec2 kzTextureCoordinate0;
uniform highp mat4 kzProjectionCameraWorldMatrix;

varying mediump vec2 vTexCoord;
void main()
{
    precision mediump float;
    vTexCoord = kzTextureCoordinate0;
    
    vec4 _tmp = kzProjectionCameraWorldMatrix * vec4(kzPosition.xyz, 1.0);
    
    if(_tmp.x == 0 && _tmp.y == 0)
    {
    	 _tmp.x = _tmp.x + 0.5;
    }
    if(_tmp.x == 1 && _tmp.y == 0)
    {
    	_tmp.y = _tmp.y + 1;
    }
   
    
    gl_Position = _tmp;
}