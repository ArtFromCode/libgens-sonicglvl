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
//   float4 g_OffsetParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
//   sampler2D sampPower;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_OffsetParam                         c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampOffset0                           s3       1
//   sampOffsetMask                        s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    frc r0.xy, c27.xzzw
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c27.xzzw
    mov r1.xy, c2
    cmp r0.zw, c27.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.zw, -r2_abs.x, v0.xyxy, c2.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s3
    mad r1.zw, r2.xywx, c0.x, c0.y
    mul_pp r1.zw, r1, c150.xyxy
    cmp r2.xy, -r0_abs.x, v0, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld r0, r0, s5
    mul_pp r0.xy, r0.x, r1.zwzw
    frc r0.zw, c26.xyxz
    cmp r1.zw, -r0, c2.x, c2.y
    add r0.zw, -r0, c26.xyxz
    cmp r1.xz, c26, r1.x, r1.zyww
    add r0.zw, r0, r1.xyxz
    add r2, r0.z, -c2
    add r3, r0.w, -c2
    cmp r0.zw, -r2_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r2_abs.y, v0, r0
    cmp r0.zw, -r2_abs.z, v1.xyxy, r0
    cmp r0.zw, -r2_abs.w, v1, r0
    mad r0.zw, r0.xyxy, v7.w, r0
    texld_pp r2, r0.zwzw, s0
    add_pp r0.z, -c61.z, c61.y
    rcp_pp r0.z, r0.z
    add r1.xzw, -c22.xyyz, v2.xyyz
    dp3 r0.w, r1.xzww, r1.xzww
    rsq r0.w, r0.w
    mul_pp r1.xzw, r0.w, r1
    rcp r0.w, r0.w
    add r0.w, r0.w, -c60.z
    dp3_pp r4.x, r1.xzww, c23
    add_pp r4.x, r4.x, -c61.z
    mul_sat_pp r0.z, r0.z, r4.x
    mad_pp r4.x, r0.z, -c0.x, -c0.w
    mul_pp r0.z, r0.z, r0.z
    mul_pp r0.z, r0.z, r4.x
    pow_sat_pp r4.x, r0.z, c61.w
    add r0.z, r1.y, -c61.x
    cmp_pp r0.z, r0.z, c2.y, r4.x
    add r4.x, -c60.z, c60.w
    rcp r4.x, r4.x
    mul_sat r0.w, r0.w, r4.x
    add_pp r0.w, -r0.w, c2.y
    cmp_pp r0.w, -c61.x, r1.y, r0.w
    mul_pp r0.z, r0.z, r0.w
    add r0.w, -c52.z, c52.w
    rcp r0.w, r0.w
    add r4.xyz, -c50, v2
    dp3 r1.y, r4, r4
    rsq r1.y, r1.y
    rcp r4.w, r1.y
    mul_pp r4.xyz, r1.y, r4
    add r1.y, r4.w, -c52.z
    mul_sat r0.w, r0.w, r1.y
    add_pp r0.w, -r0.w, c2.y
    add r1.y, -c48.z, c48.w
    rcp r1.y, r1.y
    add r5.xyz, -c46, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c48.z
    mul_sat r1.y, r1.y, r4.w
    add_pp r1.y, -r1.y, c2.y
    add r4.w, -c40.z, c40.w
    rcp r4.w, r4.w
    add r6.xyz, -c38, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c40.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c2.y
    add r5.w, -c44.z, c44.w
    rcp r5.w, r5.w
    add r7.xyz, -c42, v2
    dp3 r6.w, r7, r7
    rsq r6.w, r6.w
    rcp r7.w, r6.w
    mul_pp r7.xyz, r6.w, r7
    add r6.w, r7.w, -c44.z
    mul_sat r5.w, r5.w, r6.w
    add_pp r5.w, -r5.w, c2.y
    nrm_pp r8.xyz, v3
    dp3_pp r6.w, r8, -r7
    mul_pp r9.xyz, r6.w, c43
    cmp_pp r9.xyz, r6.w, r9, c2.x
    mul_pp r9.xyz, r5.w, r9
    dp3_pp r6.w, r8, -r6
    mul_pp r10.xyz, r6.w, c39
    cmp_pp r10.xyz, r6.w, r10, c2.x
    mad_pp r9.xyz, r4.w, r10, r9
    dp3_pp r6.w, r8, -r5
    mul_pp r10.xyz, r6.w, c47
    cmp_pp r10.xyz, r6.w, r10, c2.x
    mad_pp r9.xyz, r1.y, r10, r9
    dp3_pp r6.w, r8, -r4
    mul_pp r10.xyz, r6.w, c51
    cmp_pp r10.xyz, r6.w, r10, c2.x
    mad_pp r9.xyz, r0.w, r10, r9
    max r6.w, v4.z, c2.x
    add r7.w, r6.w, -v4.w
    cmp r10.z, r7.w, c2.x, r6.w
    mov r10.xyw, v4
    texldp_pp r10, r10, s13
    max r6.w, v5.z, c2.x
    add r7.w, r6.w, -v5.w
    cmp r11.z, r7.w, c2.x, r6.w
    mov r11.xyw, v5
    texldp_pp r11, r11, s7
    min_pp r6.w, r11.x, r10.x
    lrp_pp r7.w, v6.z, c2.y, r11.x
    lrp_pp r8.w, v6.z, c2.y, r6.w
    rcp r6.w, v4.w
    mul r10.xy, r6.w, v4
    mad r10.xy, r10, c0.x, c0.y
    abs_sat r10.xy, r10
    add_sat r10.xy, r10, -c65.x
    mul r10.xy, r10, c65.y
    max r6.w, r10.x, r10.y
    lrp_pp r9.w, r6.w, c2.y, r8.w
    lrp_pp r8.w, r6.w, c2.y, r7.w
    mul_pp r6.w, r9.w, c77.w
    dp3_pp r7.w, r8, -c10
    mul r10.xyz, r7.w, c36
    mul_pp r10.xyz, r6.w, r10
    cmp_pp r10.xyz, r7.w, r10, c2.x
    add_pp r9.xyz, r9, r10
    mul_pp r10.xyz, c58.w, c58
    dp3_pp r7.w, r8, -r1.xzww
    mul_pp r10.xyz, r7.w, r10
    cmp_pp r10.xyz, r7.w, r10, c2.x
    mad_pp r9.xyz, r0.z, r10, r9
    mov r10.xyz, c79
    add r10.xyz, -r10, c80
    mad_pp r11.xyz, r8, c0.z, c0.z
    mad r10.xyz, r11.y, r10, c79
    mul_pp r12.xyz, r8, r8
    mul r10.xyz, r10, r12.y
    mov r13.xyz, c77
    add r13.xyz, -r13, c78
    mad r11.xyw, r11.x, r13.xyzz, c77.xyzz
    mad_pp r10.xyz, r12.x, r11.xyww, r10
    mov r13.xyz, c81
    add r11.xyw, -r13.xyzz, c82.xyzz
    mad r11.xyz, r11.z, r11.xyww, c81
    mad_pp r10.xyz, r12.z, r11, r10
    mul_pp r11.xyz, r10, c17
    mul r11.xyz, r11, c70.w
    mad r10.xyz, r10, c17, -r11
    mad_pp r10.xyz, r8.w, r10, r11
    add_pp r9.xyz, r9, r10
    mul_pp r9.xyz, r9, c16
    cmp r10.xy, -r3_abs.x, v0, c2.x
    cmp r3.xy, -r3_abs.y, v0.zwzw, r10
    cmp r3.xy, -r3_abs.z, v1, r3
    cmp r3.xy, -r3_abs.w, v1.zwzw, r3
    mad r0.xy, r0, v7.w, r3
    texld_pp r3, r0, s1
    mul_pp r0.xy, r3.x, c20.yzzw
    mul_pp r0.xy, r0, c1
    mul_pp r3.xyz, r0.y, c43
    max_pp r3.w, r0.x, c2.y
    min r0.x, r3.w, c1.z
    add_pp r10.xyz, c22, -v2
    dp3_pp r3.w, r10, r10
    rsq_pp r3.w, r3.w
    mad_pp r7.xyz, r10, r3.w, -r7
    nrm_pp r11.xyz, r7
    dp3_sat_pp r7.x, r11, r8
    pow r8.w, r7.x, r0.x
    mul_pp r3.xyz, r3, r8.w
    mul_pp r3.xyz, r3, r5.w
    mul_pp r7.xyz, r0.y, c39
    mad_pp r6.xyz, r10, r3.w, -r6
    nrm_pp r11.xyz, r6
    dp3_sat_pp r5.w, r11, r8
    pow r6.x, r5.w, r0.x
    mul_pp r6.xyz, r6.x, r7
    mad_pp r3.xyz, r4.w, r6, r3
    mul_pp r6.xyz, r0.y, c47
    mad_pp r5.xyz, r10, r3.w, -r5
    nrm_pp r7.xyz, r5
    dp3_sat_pp r4.w, r7, r8
    pow r5.x, r4.w, r0.x
    mul_pp r5.xyz, r5.x, r6
    mad_pp r3.xyz, r1.y, r5, r3
    mul_pp r5.xyz, r0.y, c51
    mad_pp r4.xyz, r10, r3.w, -r4
    nrm_pp r6.xyz, r4
    dp3_sat_pp r1.y, r6, r8
    pow r4.x, r1.y, r0.x
    mul_pp r4.xyz, r4.x, r5
    mad_pp r3.xyz, r0.w, r4, r3
    mul_pp r4.xyz, r0.y, c37
    mad_pp r5.xyz, r10, r3.w, -c10
    mad_pp r1.xyz, r10, r3.w, -r1.xzww
    nrm_pp r6.xyz, r1
    dp3_sat_pp r0.w, r6, r8
    pow r1.x, r0.w, r0.x
    nrm_pp r6.xyz, r5
    dp3_sat_pp r0.w, r6, r8
    pow r1.y, r0.w, r0.x
    mul_pp r1.yzw, r1.y, r4.xxyz
    mad_pp r1.yzw, r1, r6.w, r3.xxyz
    mul_pp r3.xyz, c59.w, c59
    mul_pp r0.xyw, r0.y, r3.xyzz
    mul_pp r0.xyw, r1.x, r0
    mad_pp r0.xyz, r0.z, r0.xyww, r1.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    mad_pp r0.xyz, r9, r2, r0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r1.w, r0.w, c21.x
    add_pp r1.xyz, r0, v7
    mul_pp r0, r1, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 262 instruction slots used (6 texture, 256 arithmetic)