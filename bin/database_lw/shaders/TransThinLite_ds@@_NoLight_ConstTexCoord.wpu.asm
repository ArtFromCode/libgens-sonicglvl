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
//   float4 g_TransColorMask;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   g_TransColorMask         c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 500, 5, 1024, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl vFace
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c1.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r1, r0.x, -c1
    add r0, r0.y, -c1
    cmp r2.xy, -r1_abs.x, v0, c1.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp oC0.w, r1.w, c16.w
    cmp r2.xy, -r0_abs.x, v0, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s1
    add_pp r2.xyz, c22, -v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mad_pp r2.xyz, r2, r0.w, -c10
    nrm_pp r3.xyz, r2
    cmp_pp r2.xyz, vFace, v3, -v3
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r3, r4
    dp3 r1.w, r4, -c10
    mov_pp r2.xy, c0
    mul_pp r2.xy, r2, c20.yzzw
    max_pp r3.x, r2.x, c1.y
    mul_pp r2.xyz, r2.y, c18
    min r2.w, r3.x, c0.z
    pow_pp r3.x, r0.w, r2.w
    mov_sat_pp r0.w, r1.w
    mov_sat_pp r1.w, -r1.w
    texld_pp r4, v0.zwzw, s10
    mul r3.yzw, r4.w, c37.xxyz
    mul r3.yzw, r0.w, r3
    mul_pp r3.xyz, r3.x, r3.yzww
    mul_pp r2.xyz, r2, r3
    mul_pp r0.xyz, r0, r2
    mul r2.xyz, r4.w, c36
    mul_pp r3.xyz, r4, r4
    mul_pp r4.xyz, r0.w, r2
    mul_pp r2.xyz, r1.w, r2
    mul_pp r2.xyz, r2, c16
    mul_pp r2.xyz, r1, r2
    mul r2.xyz, r2, c150
    mul_pp r4.xyz, r4, c16
    mad_pp r3.xyz, r3, c17, r4
    mad_pp r1.xyz, r3, r1, r2
    mad_pp r0.xyz, r0, v3.w, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 61 instruction slots used (4 texture, 57 arithmetic)
