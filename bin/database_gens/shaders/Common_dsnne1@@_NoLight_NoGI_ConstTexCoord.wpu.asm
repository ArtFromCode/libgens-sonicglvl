//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0, -2, 3, 1024
    def c1, 0.5, 2, -1, 1
    def c2, 500, 5, 0.5, -0.5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    max r0.x, v3.z, c0.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c0.x
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c0.x, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c1.w, r1.x
    lrp_pp r0.y, v5.z, c1.w, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c1.y, c1.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c1.w, r0.y
    lrp_pp r2.y, r1.x, c1.w, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v1
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c0.y, c0.z
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov_pp r0.w, c1.w
    add r0.y, r0.w, -c61.x
    cmp_pp r0.y, r0.y, c1.w, r1.w
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r0.z, r0.z, r1.w
    add_pp r0.z, -r0.z, c1.w
    cmp_pp r0.z, -c61.x, r0.w, r0.z
    mul_pp r0.y, r0.y, r0.z
    add_pp r2.xzw, c22.xyyz, -v1.xyyz
    dp3_pp r0.z, r2.xzww, r2.xzww
    rsq_pp r0.z, r0.z
    mad_pp r3.xyz, r2.xzww, r0.z, -r1
    mad_pp r2.xzw, r2, r0.z, -c10.xyyz
    nrm_pp r4.xyz, r2.xzww
    nrm_pp r5.xyz, r3
    texld_pp r3, v0, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r0.zw, r3.xyxy, c1.y, c1.z
    dp2add_pp r1.w, r0.zwzw, -r0.zwzw, c1.w
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r3.xyz, v7
    mul_pp r2.xzw, r0.w, r3.xyyz
    nrm_pp r6.xyz, v6
    mad_pp r2.xzw, r0.z, r6.xyyz, r2
    nrm_pp r7.xyz, v2
    mad_pp r2.xzw, r1.w, r7.xyyz, r2
    texld_pp r8, v0, s4
    mul_pp r8.x, r8.w, r8.x
    mad_pp r0.zw, r8.xyxy, c1.y, c1.z
    mul_pp r3.xyz, r3, r0.w
    mad_pp r3.xyz, r0.z, r6, r3
    dp2add_pp r0.z, r0.zwzw, -r0.zwzw, c1.w
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    mad_pp r3.xyz, r0.z, r7, r3
    add_pp r2.xzw, r2, r3.xyyz
    nrm_pp r3.xyz, r2.xzww
    dp3_sat_pp r0.z, r5, r3
    mov_pp r5.xy, c2
    mul_pp r2.xz, r5.xyyw, c20.yyzw
    max_pp r0.w, r2.x, c1.w
    min r1.w, r0.w, c0.w
    pow r2.x, r0.z, r1.w
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r2.z, r5
    mul_pp r6.xyz, r2.z, c37
    mul_pp r2.xzw, r2.x, r5.xyyz
    mul_pp r2.xzw, r0.y, r2
    dp3_sat_pp r0.z, r4, r3
    pow r3.w, r0.z, r1.w
    mul_pp r4.xyz, r3.w, r6
    mad_pp r2.xzw, r4.xyyz, r0.x, r2
    mul r0.z, c64.z, c64.x
    mov r4.xz, c64
    mad r0.w, r4.x, -r4.z, r4.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    mul r4, r3.y, c91
    mad r4, r3.x, c90, r4
    mad r4, r3.z, c92, r4
    dp4 r0.w, r4, r4
    rsq r0.w, r0.w
    mul r4.xy, r0.w, r4
    mad_pp r4.xy, r4, c2.zwzw, c2.z
    texld_pp r4, r4, s5
    mul r5.xyz, r4, c63.x
    mad_pp r4.xyz, r5, r4.w, r4
    texld_pp r5, v0, s1
    mul_pp r4.xyz, r4, r5.w
    mul_pp r4.xyz, r0.z, r4
    mad_pp r2.xzw, r2, c18.xyyz, r4.xyyz
    mul_pp r2.xzw, r5.xyyz, r2
    mul_pp r2.xzw, r2, v2.w
    dp3_pp r0.z, r3, -c10
    mul r4.xyz, r0.z, c36
    mul_pp r4.xyz, r0.x, r4
    cmp_pp r0.xzw, r0.z, r4.xyyz, c0.x
    dp3_pp r1.x, r3, -r1
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c0.x
    mad_pp r0.xyz, r0.y, r1, r0.xzww
    mad_pp r1.xyz, r3, c1.x, c1.x
    mul_pp r3.xyz, r3, r3
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r1.y, r4, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r3.x, r1, r4.xyzz
    mov r4.xyz, c81
    add r3.xyw, -r4.xyzz, c82.xyzz
    mad r3.xyw, r1.z, r3, c81.xyzz
    mad_pp r1.xyz, r3.z, r3.xyww, r1.xyww
    mul_pp r3.xyz, r1, c17
    mul r3.xyz, r3, c70.w
    mad r1.xyz, r1, c17, -r3
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r0.w, c1.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    add_pp r1.xyz, r1, c1.z
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v8.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r1.xyz, r1, r0.w, c1.w
    mad_pp r0.xyz, r0, r1, r2.xzww
    mul_pp r3.xyz, r0, v8
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 178 instruction slots used (7 texture, 171 arithmetic)