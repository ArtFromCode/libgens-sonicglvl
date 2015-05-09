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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpec;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
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
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_SonicSkinFalloffParam               c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -0.0500000007, 1.05263162, -2, 3
    def c1, 0.5, 0, 1, -2
    def c2, 500, 5, 1024, 0.25
    def c3, 4, 0, 0, 0
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
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
    mad_pp r1.y, r0.x, c0.z, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c1.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c1.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c1.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.y
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.y, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.y
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.y, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c1.z, r2.x
    lrp_pp r1.y, v5.z, c1.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, -c1.w, -c1.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c1.z, r1.y
    lrp_pp r3.y, r2.x, c1.z, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.xyz, -c50, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xyz, r1.z, r2
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xzw, -c46.xyyz, v1.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r2.w, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c40.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.yzw, -r1, c1.z
    add r2.w, -c44.z, c44.w
    rcp r2.w, r2.w
    add r5.xyz, -c42, v1
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c44.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c1.z
    mov_pp r6.xy, c2
    mul_pp r6.xy, r6, c20.yzzw
    mul_pp r7.xyz, r6.y, c43
    add_pp r8, c22.xyzx, -v1.xyzx
    dp3_pp r4.w, r8.yzww, r8.yzww
    rsq_pp r4.w, r4.w
    mad_pp r9.xyz, r8, r4.w, -r5
    nrm_pp r10.xyz, r9
    nrm_pp r9, v2.xyzx
    dp3_sat_pp r5.w, r10, r9
    max_pp r7.w, r6.x, c1.z
    min r6.x, r7.w, c2.z
    pow r7.w, r5.w, r6.x
    mul_pp r7.xyz, r7.w, r7
    mul_pp r7.xyz, r2.w, r7
    mul_pp r10.xyz, r6.y, c39
    mad_pp r11.xyz, r8, r4.w, -r4
    dp3_pp r4.x, r9.wyzw, -r4
    add_pp r4.x, r4.x, c0.x
    mul_sat_pp r4.x, r4.x, c0.y
    mul_pp r4.xyz, r4.x, c39
    nrm_pp r12.xyz, r11
    dp3_sat_pp r5.w, r12, r9
    pow r7.w, r5.w, r6.x
    mul_pp r10.xyz, r7.w, r10
    mad_pp r7.xyz, r1.w, r10, r7
    mul_pp r10.xyz, r6.y, c47
    mad_pp r11.xyz, r8, r4.w, -r3.xzww
    dp3_pp r3.x, r9.wyzw, -r3.xzww
    add_pp r3.x, r3.x, c0.x
    mul_sat_pp r3.x, r3.x, c0.y
    mul_pp r3.xzw, r3.x, c47.xyyz
    nrm_pp r12.xyz, r11
    dp3_sat_pp r5.w, r12, r9
    pow r7.w, r5.w, r6.x
    mul_pp r10.xyz, r7.w, r10
    mad_pp r7.xyz, r1.z, r10, r7
    mul_pp r10.xyz, r6.y, c51
    mad_pp r11.xyz, r8, r4.w, -r2
    dp3_pp r2.x, r9.wyzw, -r2
    add_pp r2.x, r2.x, c0.x
    mul_sat_pp r2.x, r2.x, c0.y
    mul_pp r2.xyz, r2.x, c51
    nrm_pp r12.xyz, r11
    dp3_sat_pp r5.w, r12, r9
    pow r7.w, r5.w, r6.x
    mul_pp r10.xyz, r7.w, r10
    mad_pp r7.xyz, r1.y, r10, r7
    mul_pp r10.xyz, r6.y, c37
    mad_pp r11.xyz, r8, r4.w, -c10
    nrm_pp r12.xyz, r11
    dp3_sat_pp r5.w, r12, r9
    pow r7.w, r5.w, r6.x
    mul_pp r10.xyz, r7.w, r10
    mad_pp r7.xyz, r10, r1.x, r7
    mul_pp r10.xyz, c59.w, c59
    mul_pp r6.yzw, r6.y, r10.xxyz
    mad_pp r10.xyz, r8, r4.w, -r0.yzww
    dp3_pp r0.y, r9.wyzw, -r0.yzww
    add_pp r0.y, r0.y, c0.x
    mul_pp r8, r4.w, r8
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r9
    pow r4.w, r0.z, r6.x
    mul_pp r6.xyz, r4.w, r6.yzww
    mad_pp r6.xyz, r0.x, r6, r7
    mul_pp r6.xyz, r6, c18
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    dp3_pp r0.w, r8.yzww, r9.yzww
    add_pp r4.w, r0.w, r0.w
    add_sat_pp r0.w, -r0.w, c1.z
    pow_pp r5.w, r0.w, c150.z
    mul r0.w, r5.w, c150.y
    mad_pp r7, r4.w, r9, -r8
    mad_pp r8, r7.wyzw, c4.xxyz, c4.zzzw
    mul r10, r7, c4.yxxz
    cmp_pp r8, r7.z, r8, r10
    add_pp r4.w, r8.z, c1.z
    rcp r4.w, r4.w
    mad_pp r8.xy, r8.yxzw, r4.w, c1.z
    mad_pp r10.x, r8.y, c2.w, r8.w
    mul_pp r10.y, r8.x, c1.x
    texld_pp r8, r10, s4
    mul r10.xyz, r8, c63.x
    mad_pp r8.xyz, r10, r8.w, r8
    texld_pp r10, v0, s1
    mul_pp r8.xyz, r8, r10.w
    mul_pp r8.xyz, r0.z, r8
    mad_pp r6.xyz, r6, r10, r8
    mul_pp r6.xyz, r6, v2.w
    dp3_pp r0.z, r9.wyzw, -r5
    add_pp r0.z, r0.z, c0.x
    mul_sat_pp r0.yz, r0, c0.y
    mul_pp r5.xyz, r0.z, c43
    mul_pp r5.xyz, r2.w, r5
    mad_pp r4.xyz, r1.w, r4, r5
    mad_pp r3.xzw, r1.z, r3, r4.xyyz
    mad_pp r1.yzw, r1.y, r2.xxyz, r3.xxzw
    dp3_pp r0.z, r9.wyzw, -c10
    add_pp r0.z, r0.z, c0.x
    mul_sat_pp r0.z, r0.z, c0.y
    mul_pp r2.xyz, r0.z, c36
    mad_pp r1.yzw, r2.xxyz, r1.x, r1
    mad r0.z, r1.x, c1.x, c1.x
    mad_pp r0.z, r0.w, r0.z, c150.x
    mul r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    mad_pp r0.xyw, r0.x, r2.xyzz, r1.yzzw
    mad_pp r1.xyz, r9.wyzw, c1.x, c1.x
    mul_pp r2.xyz, r9.wyzw, r9.wyzw
    mov r4.xyz, c79
    add r3.xzw, -r4.xyyz, c80.xyyz
    mad r4.xyz, r1.y, r3.xzww, c79
    mul r4.xyz, r2.y, r4
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r2.x, r1, r4.xyzz
    mov r4.xyz, c81
    add r2.xyw, -r4.xyzz, c82.xyzz
    mad r4.xyz, r1.z, r2.xyww, c81
    mad_pp r1.xyz, r2.z, r4, r1.xyww
    mul_pp r4.xyz, r1, c17
    mul r4.xyz, r4, c70.w
    mad r1.xyz, r1, c17, -r4
    mad_pp r1.xyz, r3.y, r1, r4
    add_pp r0.xyw, r0, r1.xyzz
    mul_pp r0.xyw, r0, c16.xyzz
    texld_pp r1, v0, s0
    mad_pp r0.xyw, r0, r1.xyzz, r6.xyzz
    mul_pp r1.w, r1.w, c16.w
    mad_pp r4.xyz, r7.wyzw, c1.x, c1.x
    mul_pp r6.xyz, r7.wyzw, r7.wyzw
    mad r3.xyz, r4.y, r3.xzww, c79
    mul r3.xyz, r3, r6.y
    mad r4.xyw, r4.x, r5.xyzz, c77.xyzz
    mad r2.xyz, r4.z, r2.xyww, c81
    mad_pp r3.xyz, r6.x, r4.xyww, r3
    mad_pp r2.xyz, r6.z, r2, r3
    mad_pp r1.xyz, r2, r0.z, r0.xyww
    mul_pp r0, r1, v6
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 265 instruction slots used (5 texture, 260 arithmetic)