//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ForceAlphaColor;
//   float4 g_ParticleColorScale;
//   sampler2D sampDif;
//   sampler2D sampDifSub;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_ForceAlphaColor    c89      1
//   g_ParticleColorScale c151     1
//   sampDif              s0       1
//   sampDifSub           s1       1
//

    ps_3_0
    def c0, 1, 0, 4, 0
    dcl_texcoord v0
    dcl_color_pp v1
    dcl_texcoord2_pp v2
    dcl_2d s0
    dcl_2d s1
    texld_pp r0, v0.zwzw, s1
    mov_pp r1, v2
    add_pp r1, -r1, v1
    mad_pp r2, r0.y, r1, v2
    mul_pp r0.x, r0.w, r2.w
    texld_pp r3, v0, s0
    mad_pp r1, r3.y, r1, v2
    mad_pp r0.y, r1.w, -r3.w, c0.x
    mul_pp r0.y, r0.x, r0.y
    mad_sat_pp r4.w, r1.w, r3.w, r0.x
    mul_pp r0.x, r3.w, r1.w
    rcp r0.z, r4.w
    mul_pp r0.xy, r0.z, r0
    mul_pp r0.yzw, r0.y, r2.xxyz
    mad_pp r0.xyz, r1, r0.x, r0.yzww
    mul_pp r0.xyz, r0, c151
    cmp_pp r4.xyz, -r4.w, c0.y, r0
    mul_pp r0, r4, c89
    min_pp oC0, r0, c0.z

// approximately 19 instruction slots used (2 texture, 17 arithmetic)
