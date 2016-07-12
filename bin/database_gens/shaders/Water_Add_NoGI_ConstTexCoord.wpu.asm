//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   sampler2D g_DepthSampler;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_LightScatteringColor;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDecal;
//   sampler2D sampEnv;
//   sampler2D sampNrm1;
//   sampler2D sampNrm2;
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
//   g_EyeDirection           c23      1
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Specular  c37      1
//   g_LightScatteringColor   c75      1
//   g_aLightField            c77      6
//   g_ForceAlphaColor        c89      1
//   sampDecal                s0       1
//   sampNrm1                 s1       1
//   sampNrm2                 s2       1
//   sampEnv                  s3       1
//   g_FramebufferSampler     s11      1
//   g_DepthSampler           s12      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 0.5, -0.5, 500, 5
    def c2, 1024, 0.25, 4, 0
    def c3, 0.212500006, 0.715399981, 0.0720999986, 0
    def c4, 1, 0, -1, 0.0500000007
    def c5, 0, 1, 2, 3
    def c6, -1, 1, 0, 0.5
    dcl_texcoord v0.xyz
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xyz
    dcl_texcoord5 v5
    dcl_texcoord6 v6
    dcl_color_pp v7
    dcl_texcoord7_pp v8.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s11
    dcl_2d s12
    frc r0.xyz, c26.xzww
    cmp r1.xyz, -r0, c5.x, c5.y
    add r0.xyz, -r0, c26.xzww
    mov r2.x, c5.x
    cmp r1.xyz, c26.xzww, r2.x, r1
    add r0.xyz, r0, r1
    add r1, r0.y, -c5
    cmp r0.yw, -r1_abs.x, v5.xxzy, c5.x
    cmp r0.yw, -r1_abs.y, v5.xzzw, r0
    cmp r0.yw, -r1_abs.z, v6.xxzy, r0
    cmp r1.xy, -r1_abs.w, v6.zwzw, r0.ywzw
    add r1.z, r1.y, v1.x
    texld_pp r1, r1.xzzw, s1
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    dp2add r0.y, r1, -r1, c5.y
    rsq r0.y, r0.y
    rcp_pp r1.z, r0.y
    add r2, r0.z, -c5
    add r0, r0.x, -c5
    cmp r3.xy, -r2_abs.x, v5, c5.x
    cmp r2.xy, -r2_abs.y, v5.zwzw, r3
    cmp r2.xy, -r2_abs.z, v6, r2
    cmp r2.xy, -r2_abs.w, v6.zwzw, r2
    add r2.z, r2.y, v1.y
    texld_pp r2, r2.xzzw, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    dp2add r1.w, r2, -r2, c5.y
    rsq r1.w, r1.w
    rcp_pp r2.z, r1.w
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c0.z
    nrm_pp r2.xyz, r1
    mul r1.xy, c24.zwzw, vPos
    mov r3.xyz, c4
    mad r3, c24.zzww, r3.xyyz, r3.yxzy
    mad r1.xy, r1, c0.xwzw, r3
    add r1.xy, r3.zwzw, r1
    mad r1.zw, r2.xyxy, c4.w, r1.xyxy
    mad r1.xy, r1, c1, c1.x
    texld_pp r3, r1, s11
    mad r1.xy, r1.zwzw, c1, c1.x
    texld r4, r1, s12
    texld_pp r1, r1, s11
    rcp r1.w, v1.w
    mad r1.w, v1.z, -r1.w, r4.x
    cmp_pp r1.xyz, r1.w, r1, r3
    cmp r3.xy, -r0_abs.x, v5, c5.x
    cmp r0.xy, -r0_abs.y, v5.zwzw, r3
    cmp r0.xy, -r0_abs.z, v6, r0
    cmp r0.xy, -r0_abs.w, v6.zwzw, r0
    add r0.z, r0.y, v1.x
    texld_pp r0, r0.xzzw, s0
    mad_pp r0.xyz, r0, v7, r1
    mul_pp r0.w, r0.w, v7.w
    mul_pp r1.w, r0.w, c16.w
    nrm_pp r3.xyz, v4
    mul_pp r3.xyz, r2.y, r3
    nrm_pp r4.xyz, v3
    mad_pp r2.xyw, r2.x, r4.xyzz, r3.xyzz
    nrm_pp r3.xyz, v2
    mad_pp r2.xyz, r2.z, r3, r2.xyww
    add_pp r3, c22.xyzx, -v0.xyzx
    dp3_pp r0.w, r3.yzww, r3.yzww
    rsq_pp r0.w, r0.w
    mad_pp r4.xyz, r3, r0.w, -c10
    mul_pp r3, r0.w, r3
    nrm_pp r5.xyz, r4
    dp3_sat_pp r0.w, r5, r2
    mov_pp r4.zw, c1
    mul_pp r4.xy, r4.zwzw, c20.yzzw
    max r2.w, r4.x, c5.y
    mul_pp r4.xyz, r4.y, c37
    min r4.w, r2.w, c2.x
    pow r2.w, r0.w, r4.w
    mul_pp r4.xyz, r2.w, r4
    mul_pp r5.xyz, r4.w, c18
    mul_pp r4.xyz, r4, r5
    mad_pp r5.xyz, r2, c0.z, c0.z
    mov r6.xyz, c79
    add r6.xyz, -r6, c80
    mad r6.xyz, r5.y, r6, c79
    mul_pp r7.xyz, r2, r2
    mul r6.xyz, r6, r7.y
    mov r8.xyz, c77
    add r8.xyz, -r8, c78
    mad r5.xyw, r5.x, r8.xyzz, c77.xyzz
    mad_pp r5.xyw, r7.x, r5, r6.xyzz
    mov r6.xyz, c81
    add r6.xyz, -r6, c82
    mad r6.xyz, r5.z, r6, c81
    mad_pp r5.xyz, r7.z, r6, r5.xyww
    mul_pp r5.xyz, r5, c17
    dp3 r0.w, r2, c23
    pow r2.w, r0_abs.w, r4.w
    mul r5.xyz, r5, r2.w
    dp3_pp r0.w, r3.wyzw, r2
    add_pp r2.w, -r0_abs.w, c5.y
    add_pp r0.w, r0.w, r0.w
    mad r3, r0.w, r2.xyzx, -r3
    mul_pp r0.w, r2.w, r2.w
    mad r2.x, r0.w, -r0.w, c5.y
    mul_pp r0.w, r0.w, r0.w
    mul r2.xyz, r2.x, r5
    mad_pp r2.xyz, r4, c77.w, r2
    add_pp r0.xyz, r0, r2
    dp3_sat r2.x, r2, c3
    add r2.x, -r2.x, c5.y
    mad r4, r3.wyzw, c6.xxyz, c6.zzzw
    mul r5, r3, c4.xzzy
    cmp_pp r3, r3.z, r4, r5
    add_pp r2.y, r3.z, c5.y
    rcp r2.y, r2.y
    mad_pp r2.yz, r3.xyxw, r2.y, c5.y
    mad_pp r3.x, r2.z, c2.y, r3.w
    mul_pp r3.y, r2.y, c0.z
    texld_pp r3, r3, s3
    mul_pp r2.yzw, r0.w, r3.xxyz
    mad_pp r1.xyz, r2.yzww, r2.x, r0
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v8.y
    mad_pp oC0.xyz, r1, v8.x, r0
    mov_pp oC0.w, r1.w

// approximately 141 instruction slots used (7 texture, 134 arithmetic)