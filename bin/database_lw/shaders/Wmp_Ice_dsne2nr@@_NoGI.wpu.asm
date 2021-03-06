//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_IceParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   samplerCUBE sampRef;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_IceParam               c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm0                 s3       1
//   sampNrm1                 s4       1
//   sampEnv                  s5       1
//   sampRef                  s6       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_cube s6
    dcl_2d s9
    dcl_2d s11
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    add r6.xyz, c22, -v2
    dp3 r0.w, r6, r6
    rsq r0.w, r0.w
    mad_pp r7.xyz, r6, r0.w, -r4
    nrm_pp r8.xyz, r7
    texld_pp r7, v1, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    dp2add_sat_pp r1.w, r7, r7, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r9.xyz, v6
    mul_pp r7.yzw, r7.y, r9.xxyz
    nrm_pp r10.xyz, v5
    mad_pp r7.xyz, r7.x, r10, r7.yzww
    nrm_pp r11.xyz, v3
    mad_pp r7.xyz, r1.w, r11, r7
    dp3_sat_pp r1.w, r8, r7
    mov r8.y, c1.y
    mul_pp r2.w, r8.y, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r8.xyz, r5, r1.w
    mad_pp r12.xyz, r6, r0.w, -r2
    dp3_sat_pp r1.w, r7, -r2
    nrm_pp r2.xyz, r12
    dp3_sat_pp r2.x, r2, r7
    pow_pp r3.w, r2.x, r2.w
    mul_pp r2.x, r3.w, c20.z
    mad_pp r2.xyz, r2.x, r3, r8
    mad_pp r8.xyz, r6, r0.w, -r0
    dp3_sat_pp r0.x, r7, -r0
    nrm_pp r12.xyz, r8
    dp3_sat_pp r0.y, r12, r7
    pow_pp r3.w, r0.y, r2.w
    mul_pp r0.y, r3.w, c20.z
    mad_pp r2.xyz, r0.y, r1, r2
    add_pp r8.xyz, -c54, v2
    dp3_pp r0.y, r8, r8
    rsq_pp r0.y, r0.y
    rcp_pp r0.z, r0.y
    mul_pp r8.xyz, r0.y, r8
    mad_sat_pp r0.y, -r0.z, c56.z, c56.w
    mul r12.xyz, r0.y, c55
    mad_pp r13.xyz, r6, r0.w, -r8
    dp3_sat_pp r0.y, r7, -r8
    nrm_pp r8.xyz, r13
    dp3_sat_pp r0.z, r8, r7
    pow_pp r3.w, r0.z, r2.w
    mul_pp r0.z, r3.w, c20.z
    mad_pp r2.xyz, r0.z, r12, r2
    mad_pp r8.xyz, r6, r0.w, -c10
    mul_pp r6.xyz, r0.w, r6
    rcp r0.z, r0.w
    mad_sat_pp r0.z, -r0.z, c60.z, c60.w
    nrm_pp r13.xyz, r8
    dp3_sat_pp r0.w, r13, r7
    pow_pp r3.w, r0.w, r2.w
    mov r8.z, c20.z
    mul_pp r0.w, r8.z, c77.w
    mul_pp r0.w, r3.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    add_pp r8.xyz, r6, r6
    nrm_pp r13.xyz, r8
    dp3_sat_pp r0.w, r13, r7
    pow_pp r3.w, r0.w, r2.w
    mul_pp r0.w, r3.w, c20.z
    mul_pp r8.xyz, r0.z, c59
    mul r13.xyz, r0.z, c58
    mad_pp r2.xyz, r0.w, r8, r2
    mul_pp r2.xyz, r2, c18
    texld_pp r8, v0, s1
    mul_pp r2.xyz, r2, r8
    mul_pp r2.xyz, r2, v3.w
    dp3_sat_pp r0.z, r7, -r4
    mul_pp r4.xyz, r5, r0.z
    mad_pp r3.xyz, r1.w, r3, r4
    mad_pp r0.xzw, r0.x, r1.xyyz, r3.xyyz
    mad_pp r0.xyz, r0.y, r12, r0.xzww
    dp3_sat_pp r0.w, r7, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    dp3_sat_pp r0.w, r7, r6
    mad_pp r0.xyz, r0.w, r13, r0
    mad_pp r1.xyz, r7, c1.x, c1.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r1.y, c79
    mul_pp r4.xyz, r7, r7
    mul r3.xyz, r3, r4.y
    mov r5.xyz, c77
    mad r1.xyw, c78.xyzz, r1.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r4.x, r1.xyww, r3
    mad_pp r1.xyz, r4.z, r5, r1
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r2
    mov r2.yw, c0
    mad r0.w, c16.w, r1.w, r2.y
    mad_pp oC0.w, c16.y, r0.w, r2.w
    texld_pp r1, v1.zwzw, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    mul_pp r2.xyz, r9, r1.y
    mad_pp r2.xyz, r1.x, r10, r2
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad_pp r1.xyz, r0.w, r11, r2
    dp3_pp r0.w, -r6, r1
    mad_pp r1.w, r0.w, -r0.w, c0.w
    mul_pp r2.x, c150.x, c150.x
    mad_pp r1.w, r2.x, -r1.w, c0.w
    cmp_pp r2.x, r1.w, c0.w, c0.z
    mul_pp r1.w, r1.w, r2.x
    mul_pp r2.x, r2.x, c150.x
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    mad_pp r0.w, r2.x, r0.w, r1.w
    mul_pp r1.xyz, r1, r0.w
    mad_pp r1.xyz, r2.x, -r6, -r1
    mov_pp r1.w, -r1.z
    texld_pp r1, r1.xyww, s6
    mul_pp r1.xyz, r8, r1
    dp3 r0.w, -r6, r7
    add r0.w, r0.w, r0.w
    mad_pp r2.xyz, r7, -r0.w, -r6
    mov_pp r2.w, -r2.z
    texld_pp r2, r2.xyww, s5
    mul_pp r2.xyz, r8, r2
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    mov_pp r3.yz, c150
    mul r3.xy, r3.zyzw, c63.x
    mul r3.xy, r0.w, r3
    mov_sat_pp r0.w, v3.w
    mul r1.w, r3.y, r0.w
    add_pp r0.w, -r0.w, c0.w
    mul r0.w, r0.w, r3.x
    mul r2.xyz, r2, r1.w
    mad r1.xyz, r0.w, r1, r2
    add_pp r0.xyz, r0, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    mul r0.w, c69.z, v4.x
    lrp_pp r2.xyz, r0.w, r1, r0
    mul_pp oC0.xyz, r2, c16

// approximately 211 instruction slots used (8 texture, 203 arithmetic)
