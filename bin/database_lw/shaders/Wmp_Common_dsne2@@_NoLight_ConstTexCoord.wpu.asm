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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
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
//   sampNrm                  s3       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 10, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_cube s5
    dcl_2d s9
    dcl_2d s10
    nrm_pp r0.xyz, v6
    texld_pp r1, v1, s3
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    mul_pp r0.xyz, r0, r1.y
    nrm_pp r2.xyz, v5
    mad_pp r0.xyz, r1.x, r2, r0
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad r0.xyz, r0.w, r1, r0
    add_pp r1.xyz, c22, -v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    mul r2.xyz, r0.w, r1
    mad_pp r1.xyz, r1, r0.w, -c10
    nrm_pp r3.xyz, r1
    dp3_sat_pp r0.w, r3, r0
    dp3 r1.x, -r2, r0
    add r1.x, r1.x, r1.x
    mad_pp r1.xyz, r0, -r1.x, -r2
    dp3_sat_pp r0.x, r0, -c10
    mov_pp r1.w, -r1.z
    texld_pp r1, r1.xyww, s5
    texld r2, v0, s1
    mul r0.y, r2.w, c63.x
    mul r0.z, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    texld r3, v0.zwzw, s10
    mad_pp r0.z, r3.w, r1.w, r0.z
    mul r0.y, r0.z, r0.y
    mul_pp r1.xyz, r0.y, r1
    mov r0.y, c20.y
    mul_pp r0.y, r0.y, c1.x
    exp_pp r0.y, r0.y
    mul_pp r0.y, r0.y, c1.y
    pow_pp r1.w, r0.w, r0.y
    mul_pp r0.y, r3.w, c20.z
    mul_pp r0.y, r1.w, r0.y
    mul_pp r0.yzw, r0.y, c37.xxyz
    mad_pp r0.yzw, r0, c18.xxyz, r1.xxyz
    mul_pp r0.yzw, r2.xxyz, r0
    mul_pp r0.yzw, r0, v3.w
    mul r0.x, r0.x, r3.w
    mul_pp r1.xyz, r3, r3
    mul_pp r2.xyz, r0.x, c36
    mad_pp r1.xyz, r1, c17, r2
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r1, r2, r0.yzww
    mul_pp r0.w, r2.w, c16.w
    mad r0.w, r0.w, v7.w, c0.y
    mov r1.w, c0.w
    mad_pp oC0.w, c16.y, r0.w, r1.w
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 72 instruction slots used (6 texture, 66 arithmetic)
