attribute vec3 kzPosition;
attribute vec3 kzNormal;
attribute vec4 kzWeight;
attribute vec4 kzMatrixIndices;

uniform highp mat4 kzProjectionMatrix;
uniform highp mat4 kzCameraMatrix;
uniform highp mat4 kzWorldMatrix;
uniform highp mat4 kzNormalMatrix;
uniform highp vec3 kzCameraPosition;
uniform mediump vec3 PointLightPosition[2];
uniform lowp vec4 PointLightColor[2];
uniform mediump vec3 PointLightAttenuation[2];
uniform lowp vec4 DirectionalLightColor[1];
uniform mediump vec3 DirectionalLightDirection[1];
uniform highp vec4 kzMatrixPalette[64];
uniform lowp float BlendIntensity;
uniform lowp vec4 Emissive;

uniform lowp vec4 Ambient;
uniform lowp vec4 Diffuse;
uniform lowp vec4 SpecularColor;
uniform mediump float SpecularExponent;

varying lowp vec4 vColor;

void main()
{
    precision mediump float;
    mat4 localToSkinMatrix;
    int i1 = 3 * int(kzMatrixIndices.x);
    int i2 = 3 * int(kzMatrixIndices.y);
    int i3 = 3 * int(kzMatrixIndices.z);
    int i4 = 3 * int(kzMatrixIndices.w);
    vec4 b1 = kzWeight.x * kzMatrixPalette[i1] + kzWeight.y * kzMatrixPalette[i2]
        + kzWeight.z * kzMatrixPalette[i3] + kzWeight.w * kzMatrixPalette[i4];
    vec4 b2 = kzWeight.x * kzMatrixPalette[i1 + 1] + kzWeight.y * kzMatrixPalette[i2 + 1]
        + kzWeight.z * kzMatrixPalette[i3 + 1] + kzWeight.w * kzMatrixPalette[i4 + 1];
    vec4 b3 = kzWeight.x * kzMatrixPalette[i1 + 2] + kzWeight.y * kzMatrixPalette[i2 + 2]
        + kzWeight.z * kzMatrixPalette[i3 + 2] + kzWeight.w * kzMatrixPalette[i4 + 2];
    
    localToSkinMatrix[0] = vec4(b1.xyz, 0.0);
    localToSkinMatrix[1] = vec4(b2.xyz, 0.0);
    localToSkinMatrix[2] = vec4(b3.xyz, 0.0);
    localToSkinMatrix[3] = vec4(b1.w, b2.w, b3.w, 1.0);
    localToSkinMatrix = kzWorldMatrix * localToSkinMatrix;
    
    vec3 pointLightDirection[2];
    vec4 positionWorld = localToSkinMatrix * vec4(kzPosition.xyz, 1.0);
    vec3 V = normalize(positionWorld.xyz - kzCameraPosition);
    vec4 Norm = mat4(localToSkinMatrix[0], 
        localToSkinMatrix[1], 
        localToSkinMatrix[2], 
        vec4(0.0, 0.0, 0.0, 1.0)) * vec4(kzNormal.xyz, 1.0);
    vec3 N = normalize(Norm.xyz);

    pointLightDirection[0] = positionWorld.xyz - PointLightPosition[0];
    pointLightDirection[1] = positionWorld.xyz - PointLightPosition[1];
    
    vec3 L[3];
    vec3 H[3];
    float LdotN, NdotH;
    float specular;
    vec3 c;
    float d, attenuation;
    
    lowp vec3 vAmbDif = vec3(0.0);
    lowp vec3 vSpec = vec3(0.0);
    
    L[0] = vec3(1.0, 0.0, 0.0);
    if(length(DirectionalLightDirection[0]) > 0.01)
    {
        L[0] = normalize(-DirectionalLightDirection[0]);
    }
    H[0] = normalize(-V + L[0]);
    
    L[1] = normalize(-pointLightDirection[0]);
    H[1] = normalize(-V + L[1]);
    
    L[2] = normalize(-pointLightDirection[1]);
    H[2] = normalize(-V + L[2]);

    vAmbDif += Ambient.rgb;
  
    // Apply directional light 0.
    {
        LdotN = max(0.0, dot(L[0], N));
        NdotH = max(0.0, dot(N, H[0]));
        specular = pow(NdotH, SpecularExponent);
        vAmbDif += (LdotN * Diffuse.rgb) * DirectionalLightColor[0].rgb;
        vSpec += SpecularColor.rgb * specular * DirectionalLightColor[0].rgb;
    }
    
    // Apply point light 0.
    {
        LdotN = max(0.0, dot(L[1], N));
        NdotH = max(0.0, dot(N, H[1]));
        specular = pow(NdotH, SpecularExponent);
        c = PointLightAttenuation[0];
        d = length(pointLightDirection[0]);
        attenuation = 1.0 / max(0.001, (c.x + c.y * d + c.z * d * d));
        vAmbDif += (LdotN * Diffuse.rgb) * attenuation * PointLightColor[0].rgb;
        vSpec +=  SpecularColor.rgb * specular * attenuation * PointLightColor[0].rgb;
    }

    // Apply point light 1.
    {
        LdotN = max(0.0, dot(L[2], N));
        NdotH = max(0.0, dot(N, H[2]));
        specular = pow(NdotH, SpecularExponent);
        c = PointLightAttenuation[1];
        d = length(pointLightDirection[1]);
        attenuation = 1.0 / max(0.001, (c.x + c.y * d + c.z * d * d));
        vAmbDif += (LdotN * Diffuse.rgb) * attenuation * PointLightColor[1].rgb;
        vSpec +=  SpecularColor.rgb * specular * attenuation * PointLightColor[1].rgb;
    }
    
     vColor.rgb = (vAmbDif.rgb + vSpec.rgb + Emissive.rgb) * BlendIntensity;
    vColor.a = BlendIntensity;

    gl_Position = kzProjectionMatrix * kzCameraMatrix * positionWorld;
}