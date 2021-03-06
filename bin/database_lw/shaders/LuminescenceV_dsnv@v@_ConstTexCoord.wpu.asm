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
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmiMask;
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
//   mrgTexcoordIndex         c26      3
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   sampDif                  s0       1
//   sampSpe                  s2       1
//   sampNrm                  s4       1
//   sampEmiMask              s6       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 10, 4
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s4
    dcl_2d s6
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c1.x, c1.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c1.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c1
    add r0, r0.y, -c1
    cmp r1.yz, -r2_abs.x, v0.xxyw, c1.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s0
    mul_pp oC0.w, r2.w, c16.w
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    add_pp r1.yzw, -c46.xxyz, v2.xxyz
    dp3_pp r0.w, r1.yzww, r1.yzww
    rsq_pp r0.w, r0.w
    rcp_pp r2.w, r0.w
    mul_pp r1.yzw, r0.w, r1
    mad_sat_pp r0.w, -r2.w, c48.z, c48.w
    mul r3.xyz, r0.w, c47
    frc r0.w, c27.z
    cmp r2.w, -r0.w, c1.x, c1.y
    add r0.w, -r0.w, c27.z
    cmp r2.w, c27.z, r1.x, r2.w
    add r0.w, r0.w, r2.w
    add r4, r0.w, -c1
    cmp r5.xy, -r4_abs.x, v0, c1.x
    cmp r4.xy, -r4_abs.y, v0.zwzw, r5
    cmp r4.xy, -r4_abs.z, v1, r4
    cmp r4.xy, -r4_abs.w, v1.zwzw, r4
    texld_pp r4, r4, s4
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c0.x, c0.y
    nrm_pp r5.xyz, v6
    mul_pp r5.xyz, r4.y, r5
    nrm_pp r6.xyz, v5
    mad_pp r5.xyz, r4.x, r6, r5
    dp2add_sat_pp r0.w, r4, r4, c1.x
    add r0.w, -r0.w, c1.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r4.xyz, r0.w, r4, r5
    add_pp r5.xyz, c22, -v2
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    mad_pp r6.xyz, r5, r0.w, -r1.yzww
    dp3_sat_pp r1.y, r4, -r1.yzww
    mul_pp r1.yzw, r3.xxyz, r1.y
    nrm_pp r7.xyz, r6
    dp3_sat_pp r2.w, r7, r4
    mov r6.y, c20.y
    mul_pp r3.w, r6.y, c0.z
    exp_pp r3.w, r3.w
    mul_pp r3.w, r3.w, c0.w
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mul_pp r3.xyz, r3, r2.w
    add_pp r6.xyz, -c42, v2
    dp3_pp r2.w, r6, r6
    rsq_pp r2.w, r2.w
    rcp_pp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    mad_sat_pp r2.w, -r4.w, c44.z, c44.w
    mul r7.xyz, r2.w, c43
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r2.w, r4, -r6
    mad_pp r1.yzw, r2.w, r7.xxyz, r1
    nrm_pp r6.xyz, r8
    dp3_sat_pp r2.w, r6, r4
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mad_pp r3.xyz, r2.w, r7, r3
    add_pp r6.xyz, -c50, v2
    dp3_pp r2.w, r6, r6
    rsq_pp r2.w, r2.w
    rcp_pp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    mad_sat_pp r2.w, -r4.w, c52.z, c52.w
    mul r7.xyz, r2.w, c51
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r2.w, r4, -r6
    mad_pp r1.yzw, r2.w, r7.xxyz, r1
    nrm_pp r6.xyz, r8
    dp3_sat_pp r2.w, r6, r4
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mad_pp r3.xyz, r2.w, r7, r3
    add_pp r6.xyz, -c54, v2
    dp3_pp r2.w, r6, r6
    rsq_pp r2.w, r2.w
    rcp_pp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    mad_sat_pp r2.w, -r4.w, c56.z, c56.w
    mul r7.xyz, r2.w, c55
    mad_pp r8.xyz, r5, r0.w, -r6
    dp3_sat_pp r2.w, r4, -r6
    mad_pp r1.yzw, r2.w, r7.xxyz, r1
    mad_pp r5.xyz, r5, r0.w, -c10
    nrm_pp r6.xyz, r5
    dp3_sat_pp r0.w, r6, r4
    pow_pp r2.w, r0.w, r3.w
    nrm_pp r5.xyz, r8
    dp3_sat_pp r0.w, r5, r4
    dp3_sat_pp r4.x, r4, -c10
    pow_pp r4.y, r0.w, r3.w
    mul_pp r0.w, r4.y, c20.z
    mad_pp r3.xyz, r0.w, r7, r3
    texld r5, v0.zwzw, s10
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    mul_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, v3.w
    mul r0.w, r4.x, r5.w
    mad_pp r1.yzw, r0.w, c36.xxyz, r1
    mad_pp r1.yzw, r5.xxyz, r5.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    mad_pp r0.xyz, r1.yzww, r2, r0
    frc r0.w, c28.x
    cmp r1.y, -r0.w, c1.x, c1.y
    add r0.w, -r0.w, c28.x
    cmp r1.x, c28.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c1
    cmp r2.xy, -r1_abs.x, v0, c1.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r1, r1, s6
    mul_pp r2.xyz, c17, v7
    mad_pp r0.xyz, r2, r1, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 168 instruction slots used (6 texture, 162 arithmetic)
