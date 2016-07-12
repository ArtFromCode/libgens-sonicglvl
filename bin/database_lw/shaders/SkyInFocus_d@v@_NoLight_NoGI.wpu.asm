//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_BackGroundScale;
//   float4 g_ForceAlphaColor;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   mrgTexcoordIndex  c26      1
//   g_BackGroundScale c67      1
//   g_ForceAlphaColor c89      1
//   sampDif           s0       1
//

    ps_3_0
    def c0, 0, 1, 2, 3
    def c1, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_color_pp v2
    dcl_2d s0
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c0.x, c0.y
    add r0.x, -r0.x, c26.x
    mov r1.x, c0.x
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c0
    cmp r1.xy, -r0_abs.x, v0, c0.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mul_pp r0, r0, v2
    mul_pp r1.xyz, r0, c67.w
    mul_pp r0.xyz, r1, c67
    mul_pp r0, r0, c89
    min_pp oC0, r0, c1.x
    mov oDepth, c0.y

// approximately 18 instruction slots used (1 texture, 17 arithmetic)