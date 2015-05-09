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
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//   sampler2D sampFO;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampFO                                s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, -2, 3, 0.5, -0.5
    def c2, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c48.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c0.z
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r2.yzw, -c38.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c40.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c0.z
    add r3.x, -c44.z, c44.w
    rcp r3.x, r3.x
    add r3.yzw, -c42.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c44.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c0.z
    nrm_pp r4.xyz, v2
    dp3_pp r3.y, r4, -r3.yzww
    mul_pp r5.xyz, r3.y, c43
    cmp_pp r3.yzw, r3.y, r5.xxyz, c0.y
    mul_pp r3.xyz, r3.yzww, r3.x
    dp3_pp r2.y, r4, -r2.yzww
    mul_pp r5.xyz, r2.y, c39
    cmp_pp r2.yzw, r2.y, r5.xxyz, c0.y
    mad_pp r2.xyz, r2.x, r2.yzww, r3
    dp3_pp r1.y, r4, -r1.yzww
    mul_pp r3.xyz, r1.y, c47
    cmp_pp r1.yzw, r1.y, r3.xxyz, c0.y
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    add r1.w, -c52.z, c52.w
    rcp r1.w, r1.w
    add r2.xyz, -c50, v1
    dp3 r2.w, r2, r2
    rsq r2.w, r2.w
    rcp r3.x, r2.w
    mul_pp r2.xyz, r2.w, r2
    dp3_pp r2.x, r4, -r2
    add r2.y, r3.x, -c52.z
    mul_sat r1.w, r1.w, r2.y
    add_pp r1.w, -r1.w, c0.z
    mul_pp r2.yzw, r2.x, c51.xxyz
    cmp_pp r2.xyz, r2.x, r2.yzww, c0.y
    mad_pp r1.xyz, r1.w, r2, r1
    max r1.w, v3.z, c0.y
    add r2.x, r1.w, -v3.w
    cmp r2.z, r2.x, c0.y, r1.w
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    max r1.w, v4.z, c0.y
    add r2.y, r1.w, -v4.w
    cmp r3.z, r2.y, c0.y, r1.w
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r1.w, r3.x, r2.x
    lrp_pp r2.x, v5.z, c0.z, r3.x
    lrp_pp r2.y, v5.z, c0.z, r1.w
    rcp r1.w, v3.w
    mul r2.zw, r1.w, v3.xyxy
    mad r2.zw, r2, -c0.w, -c0.z
    abs_sat r2.zw, r2
    add_sat r2.zw, r2, -c65.x
    mul r2.zw, r2, c65.y
    max r1.w, r2.z, r2.w
    lrp_pp r3.x, r1.w, c0.z, r2.y
    lrp_pp r3.y, r1.w, c0.z, r2.x
    mul r1.w, r3.x, c77.w
    dp3_pp r2.x, r4, -c10
    mul r2.yzw, r2.x, c36.xxyz
    mul_pp r2.yzw, r1.w, r2
    cmp_pp r2.xyz, r2.x, r2.yzww, c0.y
    add_pp r1.xyz, r1, r2
    mul_pp r2.xyz, c58.w, c58
    dp3_pp r0.y, r4, -r0.yzww
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c0.y
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r2.xyz, r4, c0.x, c0.x
    mad r1.xyz, r2.y, r1, c79
    mul_pp r3.xzw, r4.xyyz, r4.xyyz
    mul r1.xyz, r1, r3.z
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r2.xyw, r2.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyz, r3.x, r2.xyww, r1
    mov r5.xyz, c81
    add r2.xyw, -r5.xyzz, c82.xyzz
    mad r2.xyz, r2.z, r2.xyww, c81
    mad_pp r1.xyz, r3.w, r2, r1
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    mul_pp r1.xy, r4.y, c91
    mad_pp r1.xy, r4.x, c90, r1
    mad_pp r1.xy, r4.z, c92, r1
    mad_pp r1.xy, r1, c1.zwzw, c1.z
    texld_pp r2, r1, s5
    mul r0.w, c64.w, c64.y
    mov r3.yw, c64
    mad r1.x, r3.y, -r3.w, r3.w
    mad_pp r0.w, r1.w, r1.x, r0.w
    mul_pp r1.xyz, r0.w, r2
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r1.x, r2.w, c16.w
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 157 instruction slots used (4 texture, 153 arithmetic)