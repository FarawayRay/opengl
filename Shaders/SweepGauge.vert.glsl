attribute vec3 kzPosition;
uniform highp mat4 kzProjectionCameraWorldMatrix;
varying mediump vec2 vTexCoord;
varying mediump vec2 sweepCoord;
varying mediump vec2 centreCoord;
attribute vec2 kzTextureCoordinate0;
uniform mediump float sweepAngle;

void main()
{
    precision mediump float;
    gl_Position = kzProjectionCameraWorldMatrix * vec4(kzPosition.xyz, 1.0);
    vTexCoord = kzTextureCoordinate0;
    float rotation = (sweepAngle/360.0)*3.14*2.0;
    float sinRot = sin (rotation);
    float cosRot = cos (rotation);
    mat2 rotationMatrix = mat2( cosRot, -sinRot, sinRot, cosRot);
    centreCoord = (vTexCoord*2.0-1.0);
    sweepCoord = centreCoord * rotationMatrix;
}