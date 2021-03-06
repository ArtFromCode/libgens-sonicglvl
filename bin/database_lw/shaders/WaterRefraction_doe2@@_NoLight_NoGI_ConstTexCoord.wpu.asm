//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampOffset;
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
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 4, -0.707106769, 0.5, -0.5
    def c2, 1, 0, -1, 10
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s2
    dcl_2d s9
    dcl_2d s11
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.xz, -r2_abs.x, v0.xyyw, c3.x
    cmp r1.xz, -r2_abs.y, v0.zyww, r1
    cmp r1.xz, -r2_abs.z, v1.xyyw, r1
    cmp r1.xz, -r2_abs.w, v1.zyww, r1
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c151.xyxy, r1.xyxz
    texld_pp r2, r0.zwzw, s0
    nrm r3.xyz, v3
    mad_pp r1.xzw, r3.xyyz, c0.z, c0.z
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.z, c79
    mul_pp r5.xyz, r3, r3
    mul r4.xyz, r4, r5.y
    mov r6, c77
    mad r6.xyz, c78, r1.x, r6
    mov r7.xyz, c82
    mad r1.xzw, r7.xyyz, r1.w, c81.xyyz
    mad_pp r4.xyz, r5.x, r6, r4
    mad_pp r1.xzw, r5.z, r1, r4.xyyz
    dp3_sat_pp r0.z, r3, -c10
    mul r0.z, r0.z, c77.w
    mul_pp r4.xyz, r0.z, c36
    mad_pp r1.xzw, r1, c17.xyyz, r4.xyyz
    mul_pp r1.xzw, r1, c16.xyyz
    mul_pp r1.xzw, r2.xyyz, r1
    mul_pp r0.z, r2.w, c16.w
    mul r0.w, c150.x, c150.x
    mul_pp r2.xyz, r3.y, c91
    mad_pp r2.xyz, r3.x, c90, r2
    mad_pp r2.xyz, r3.z, c92, r2
    mad r2.w, r2.z, -r2.z, c3.y
    mad r0.w, r0.w, -r2.w, c3.y
    cmp r2.w, r0.w, c3.y, c3.x
    mul r0.w, r0.w, r2.w
    mul r2.w, r2.w, c150.x
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mad r0.w, r2.w, -r2.z, r0.w
    mul_pp r2.xy, r2, r0.w
    add r2.zw, c0.z, vPos.xyxy
    mul r2.zw, r2, c24
    mov r4, c2
    mad r5, c24.zzww, r4.xyyz, r4.yxzy
    mad r2.zw, r2, c0.xyxw, r5.xyxy
    add_pp r2.zw, r5, r2
    mad_pp r2.xy, r2, c1.y, r2.zwzw
    mad_pp r2.xy, r0, c151, r2
    mad r2.xy, r2, c1.zwzw, c1.z
    texld_pp r2, r2, s11
    mad r1.xzw, r1, v5.xyyz, -r2.xyyz
    mul_pp r0.w, r0.z, v5.w
    mad r0.z, r0.z, -v5.w, c3.y
    mul r0.z, r0.z, c63.x
    mad_pp r1.xzw, r0.w, r1, r2.xyyz
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r0.w, c77.w, r2.x, r0.w
    mul r0.z, r0.w, r0.z
    add_pp r2.xyz, c22, -v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul r4.xyz, r0.w, r2
    mad_pp r2.xyz, r2, r0.w, -c10
    nrm_pp r5.xyz, r2
    dp3_sat_pp r0.w, r5, r3
    dp3 r2.x, -r4, r3
    add r2.x, r2.x, r2.x
    mad_pp r2.xyz, r3, -r2.x, -r4
    dp3_sat_pp r2.w, r3, r4
    add_pp r2.w, -r2.w, c3.y
    mad_pp r3.xy, r0, c151, r2
    mov_pp r3.z, -r2.z
    texld_pp r3, r3, s1
    mul_pp r0.xyz, r0.z, r3
    mul_pp r2.x, r4.w, c20.y
    exp_pp r2.x, r2.x
    mul_pp r2.x, r2.x, c1.x
    pow_pp r3.x, r0.w, r2.x
    mul_pp r0.w, r6.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mul_pp r2.xyz, r0.w, c37
    mad_pp r0.xyz, r2, c18, r0
    mul_pp r0.w, r2.w, r2.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r2.w, r0.w
    lrp_pp r2.x, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.x, r0, r1.xzww
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c3.y

// approximately 110 instruction slots used (5 texture, 105 arithmetic)
