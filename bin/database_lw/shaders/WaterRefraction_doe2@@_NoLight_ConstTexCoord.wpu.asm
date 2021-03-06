//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
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
    dcl_2d s10
    dcl_2d s11
    add r0.xy, c0.z, vPos
    mul r0.xy, r0, c24.zwzw
    mov r1, c2
    mad r2, c24.zzww, r1.xyyz, r1.yxzy
    mad r0.xy, r0, c0.xwzw, r2
    add_pp r0.xy, r2.zwzw, r0
    mul r0.z, c150.x, c150.x
    nrm r1.xyz, v3
    mul_pp r2.xyz, r1.y, c91
    mad_pp r2.xyz, r1.x, c90, r2
    mad_pp r2.xyz, r1.z, c92, r2
    mad r0.w, r2.z, -r2.z, c3.y
    mad r0.z, r0.z, -r0.w, c3.y
    cmp r0.w, r0.z, c3.y, c3.x
    mul r0.z, r0.w, r0.z
    mul r0.w, r0.w, c150.x
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    mad r0.z, r0.w, -r2.z, r0.z
    mul_pp r0.zw, r2.xyxy, r0.z
    mad_pp r0.xy, r0.zwzw, c1.y, r0
    frc r0.zw, c26.xyxw
    cmp r2.xy, -r0.zwzw, c3.x, c3.y
    add r0.zw, -r0, c26.xyxw
    mov r3.xy, c3
    cmp r2.xy, c26.xwzw, r3.x, r2
    add r0.zw, r0, r2.xyxy
    add r2, r0.w, -c3
    add r4, r0.z, -c3
    cmp r0.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r2_abs.y, v0, r0
    cmp r0.zw, -r2_abs.z, v1.xyxy, r0
    cmp r0.zw, -r2_abs.w, v1, r0
    texld_pp r2, r0.zwzw, s2
    mad r0.zw, r2.xywy, c0.x, c0.y
    mad_pp r0.xy, r0.zwzw, c151, r0
    mad r0.xy, r0, c1.zwzw, c1.z
    texld_pp r2, r0, s11
    cmp r0.xy, -r4_abs.x, v0, c3.x
    cmp r0.xy, -r4_abs.y, v0.zwzw, r0
    cmp r0.xy, -r4_abs.z, v1, r0
    cmp r0.xy, -r4_abs.w, v1.zwzw, r0
    mad r0.xy, r0.zwzw, c151, r0
    texld_pp r4, r0, s0
    dp3_sat_pp r0.x, r1, -c10
    texld r5, v0.zwzw, s10
    mul r0.x, r0.x, r5.w
    mul_pp r3.xzw, r0.x, c36.xyyz
    mul_pp r5.xyz, r5, r5
    mad_pp r3.xzw, r5.xyyz, c17.xyyz, r3
    mul_pp r3.xzw, r3, c16.xyyz
    mul_pp r3.xzw, r4.xyyz, r3
    mul_pp r0.x, r4.w, c16.w
    mad r3.xzw, r3, v5.xyyz, -r2.xyyz
    mul_pp r0.y, r0.x, v5.w
    mad r0.x, r0.x, -v5.w, c3.y
    mul r0.x, r0.x, c63.x
    mad_pp r2.xyz, r0.y, r3.xzww, r2
    mul r0.y, c64.z, c64.x
    mov r3.xz, c64
    mad r2.w, r3.x, -r3.z, r3.z
    mad_pp r0.y, r5.w, r2.w, r0.y
    mul_pp r2.w, r5.w, c20.z
    mul r0.x, r0.y, r0.x
    add_pp r3.xzw, c22.xyyz, -v2.xyyz
    dp3_pp r0.y, r3.xzww, r3.xzww
    rsq_pp r0.y, r0.y
    mul r4.xyz, r0.y, r3.xzww
    mad_pp r3.xzw, r3, r0.y, -c10.xyyz
    nrm_pp r5.xyz, r3.xzww
    dp3_sat_pp r0.y, r5, r1
    dp3 r3.x, -r4, r1
    add r3.x, r3.x, r3.x
    mad_pp r3.xzw, r1.xyyz, -r3.x, -r4.xyyz
    dp3_sat_pp r1.x, r1, r4
    add_pp r1.x, -r1.x, c3.y
    mad_pp r4.xy, r0.zwzw, c151, r3.xzzw
    mov_pp r4.z, -r3.w
    texld_pp r4, r4, s1
    mul_pp r0.xzw, r0.x, r4.xyyz
    mul_pp r1.y, r1.w, c20.y
    exp_pp r1.y, r1.y
    mul_pp r1.y, r1.y, c1.x
    pow_pp r3.x, r0.y, r1.y
    mul_pp r0.y, r2.w, r3.x
    mul_pp r1.yzw, r0.y, c37.xxyz
    mad_pp r0.xyz, r1.yzww, c18, r0.xzww
    mul_pp r0.w, r1.x, r1.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r1.x, r0.w
    lrp_pp r1.x, r0.w, r3.y, c62.x
    mad_pp r0.xyz, r1.x, r0, r2
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c3.y

// approximately 101 instruction slots used (6 texture, 95 arithmetic)
