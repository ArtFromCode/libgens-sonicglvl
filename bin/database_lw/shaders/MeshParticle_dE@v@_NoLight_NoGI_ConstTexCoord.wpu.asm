//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_Emission;
//   float4 g_ForceAlphaColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ParticleColorScale;
//   float4 g_ParticleParam;
//   float4 mrgEmissionPower;
//   sampler2D sampDif;
//   sampler2D sampEmit;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_Emission                            c19      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   mrgEmissionPower                      c34      1
//   g_ForceAlphaColor                     c89      1
//   g_ParticleParam                       c150     1
//   g_ParticleColorScale                  c152     1
//   sampDif                               s0       1
//   sampEmit                              s2       1
//

    ps_3_0
    def c0, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_color_pp v1
    dcl_2d s0
    dcl_2d s2
    texld_pp r0, v0.zwzw, s2
    mul_pp r0.xyz, r0, c34.y
    mov_pp r1.x, c34.x
    mad_pp r0.xyz, c19, r1.x, r0
    texld_pp r1, v0, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v1.w
    mul_pp r0.w, r0.w, c21.x
    mul_pp r2.w, r0.w, c150.w
    mad_pp r0.xyz, r1, v1, r0
    mul_pp r2.xyz, r0, c152
    mul_pp r0, r2, c89
    min_pp oC0, r0, c0.x

// approximately 13 instruction slots used (2 texture, 11 arithmetic)