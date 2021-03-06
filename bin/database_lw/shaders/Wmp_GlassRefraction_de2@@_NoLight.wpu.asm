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
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 1, 0, -1
    def c1, 2, -2, 10, 4
    def c2, -0.707106769, 0.5, -0.5, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    add_pp r0.xyz, c22, -v1
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp r1.x, r0.w
    mad_sat_pp r1.x, -r1.x, c60.z, c60.w
    mul_pp r1.yzw, r1.x, c59.xxyz
    mul r2.xyz, r1.x, c58
    mov r3.z, c1.z
    mul_pp r1.x, r3.z, c20.y
    exp_pp r1.x, r1.x
    mul_pp r1.x, r1.x, c1.w
    mul r3.xyz, r0.w, r0
    mad_pp r0.xyz, r0, r0.w, -c10
    nrm_pp r4.xyz, r0
    add_pp r0.xyz, r3, r3
    nrm_pp r5.xyz, r0
    nrm r0.xyz, v2
    dp3_sat_pp r0.w, r5, r0
    pow_pp r2.w, r0.w, r1.x
    mul_pp r0.w, r2.w, c20.z
    mul_pp r1.yzw, r1, r0.w
    dp3_sat_pp r0.w, r4, r0
    pow_pp r2.w, r0.w, r1.x
    texld r4, v0.zwzw, s10
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r1.xyz, r0.w, c37, r1.yzww
    dp3 r0.w, -r3, r0
    add r0.w, r0.w, r0.w
    mad_pp r5.xyz, r0, -r0.w, -r3
    dp3_sat_pp r0.w, r0, r3
    mov_pp r5.w, -r5.z
    texld_pp r3, r5.xyww, s1
    mul r1.w, c64.z, c64.x
    mov r5.xz, c64
    mad r2.w, r5.x, -r5.z, r5.z
    mad_pp r1.w, r4.w, r2.w, r1.w
    texld_pp r5, v0, s0
    mov r6.yzw, c0
    mad r2.w, c16.w, -r5.w, r6.y
    mul r2.w, r2.w, c63.x
    mul r1.w, r1.w, r2.w
    mul_pp r3.xyz, r1.w, r3
    mad_pp r1.xyz, r1, c18, r3
    mul_pp r2.xyz, r2, r0.w
    add_pp r0.w, -r0.w, c0.y
    dp3_sat_pp r1.w, r0, -c10
    mul r1.w, r1.w, r4.w
    mul_pp r3.xyz, r4, r4
    mad_pp r2.xyz, r1.w, c36, r2
    mad_pp r2.xyz, r3, c17, r2
    mul_pp r2.xyz, r2, c16
    mul_pp r3.xyz, r0.y, c91
    mad_pp r3.xyz, r0.x, c90, r3
    mad_pp r0.xyz, r0.z, c92, r3
    mad r1.w, r0.z, -r0.z, c0.y
    mul r2.w, c150.x, c150.x
    mad r1.w, r2.w, -r1.w, c0.y
    cmp r2.w, r1.w, c0.y, c0.z
    mul r1.w, r1.w, r2.w
    mul r2.w, r2.w, c150.x
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    mad r0.z, r2.w, -r0.z, r1.w
    mul_pp r0.xy, r0, r0.z
    add r3.xy, c0.x, vPos
    mul r3.xy, r3, c24.zwzw
    mad r4, c24.zzww, r6.yzzw, r6.zywz
    mad r3.zw, r3.xyxy, c1.xyxy, r4.xyxy
    texld r7, r3, s11
    add_pp r3.xy, r4.zwzw, r3.zwzw
    mad_pp r0.xy, r0, c2.x, r3
    mad r0.xy, r0, c2.yzzw, c2.y
    texld_pp r3, r0, s11
    mad r0.xyz, r2, r5, -r3
    mul_pp r1.w, r5.w, c16.w
    mad_pp r0.xyz, r1.w, r0, r3
    mul_pp r1.w, r0.w, r0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r1.w
    lrp_pp r1.w, r0.w, r6.y, c62.x
    mad_pp r0.xyz, r1.w, r1, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul r0.w, c69.z, v3.x
    lrp_pp r1.xyz, r0.w, r7, r0
    mul_pp oC0.xyz, r1, c16
    mov_pp oC0.w, c0.y

// approximately 98 instruction slots used (6 texture, 92 arithmetic)
