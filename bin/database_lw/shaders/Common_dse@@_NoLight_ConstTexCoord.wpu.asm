//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
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
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 1, 0.5
    def c1, -1, 1, 0, 0.5
    def c2, 0.25, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r1.yzww, r1.yzww
    rsq_pp r0.w, r0.w
    mul r2, r0.w, r1
    mad_pp r1.xyz, r1, r0.w, -c10
    nrm_pp r3.xyz, r1
    nrm r1, v2.xyzx
    dp3 r0.w, r2.yzww, r1.yzww
    add r0.w, r0.w, r0.w
    mad r2, r0.w, r1, -r2
    mul r4, r2.wyzw, c1.xxyz
    mad r5, r2, c1.yxxz, c1.zzzw
    cmp r2, r2.z, r4, r5
    add r0.w, r2.z, c0.z
    rcp r0.w, r0.w
    mad r2.xy, r2.yxzw, r0.w, c0.z
    mad_pp r4.x, r2.y, c2.x, r2.w
    mul_pp r4.y, r2.x, c0.w
    texld_pp r2, r4, s5
    texld r4, v0, s1
    mul r0.w, r4.w, c63.x
    mul r2.w, c64.z, c64.x
    mov r5.xz, c64
    mad r3.w, r5.x, -r5.z, r5.z
    texld r5, v0.zwzw, s10
    mad_pp r2.w, r5.w, r3.w, r2.w
    mul r0.w, r0.w, r2.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r3, r1
    dp3_sat_pp r1.x, r1.wyzw, -c10
    mul r1.x, r1.x, r5.w
    mul_pp r1.xyz, r1.x, c36
    mov r3.x, c0.x
    mul_pp r1.w, r3.x, c20.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c0.y
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r5.w, c20.z
    mul_pp r3.xyz, r5, r5
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r0.w, r2.w, r0.w
    mul_pp r3.xyz, r0.w, c37
    mad_pp r2.xyz, r3, c18, r2
    mul_pp r2.xyz, r4, r2
    mul_pp r2.xyz, r2, v2.w
    mad_pp r0.xyz, r1, r0, r2
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 59 instruction slots used (5 texture, 54 arithmetic)
