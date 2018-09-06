attribute vec3 kzPosition;
attribute vec2 kzTextureCoordinate0;
uniform highp mat4 kzProjectionCameraWorldMatrix;

varying mediump vec2 vTexCoord;
varying vec2 surfacePosition;
void main()
{
    precision mediump float;
    vTexCoord = kzTextureCoordinate0;
    surfacePosition = (kzProjectionCameraWorldMatrix * vec4(kzPosition.xyz, 1.0)).xy;
    gl_Position = kzProjectionCameraWorldMatrix * vec4(kzPosition.xyz, 1.0);
}