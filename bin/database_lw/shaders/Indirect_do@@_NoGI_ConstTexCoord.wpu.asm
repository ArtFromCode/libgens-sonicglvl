//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_OffsetParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   sampler2D sampOffset0;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
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
//   g_aLightField            c77      6
//   g_OffsetParam            c150     1
//   sampDif                  s0       1
//   sampOffset0              s3       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0.5, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s3
    dcl_2d s9
    frc r0.x, c27.y
    cmp r0.y, -r0.x, c1.x, c1.y
    add r0.x, -r0.x, c27.y
    mov r1.x, c1.x
    cmp r0.y, c27.y, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c1
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mad r0.xy, r0.wyzw, c0.x, c0.y
    frc r0.z, c26.x
    cmp r0.w, -r0.z, c1.x, c1.y
    add r0.z, -r0.z, c26.x
    cmp r0.w, c26.x, r1.x, r0.w
    add r0.z, r0.w, r0.z
    add r1, r0.z, -c1
    cmp r0.zw, -r1_abs.x, v0.xyxy, c1.x
    cmp r0.zw, -r1_abs.y, v0, r0
    cmp r0.zw, -r1_abs.z, v1.xyxy, r0
    cmp r0.zw, -r1_abs.w, v1, r0
    mad r0.xy, r0, c150, r0.zwzw
    texld_pp r0, r0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v5.w
    add_pp r1.xyz, -c42, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r0.w, c43
    add_pp r3.xyz, -c46, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r4.xyz, r0.w, c47
    nrm_pp r5.xyz, v3
    dp3_sat_pp r0.w, r5, -r3
    mul_pp r3.xyz, r4, r0.w
    dp3_sat_pp r0.w, r5, -r1
    mad_pp r1.xyz, r0.w, r2, r3
    add_pp r2.xyz, -c50, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r5, -r2
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r1.w, c51
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, -c54, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r5, -r2
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r2.xyz, r1.w, c55
    mad_pp r1.xyz, r0.w, r2, r1
    dp3_sat_pp r0.w, r5, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r5, c0.z, c0.z
    mul_pp r3.xyz, r5, r5
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r2.xyz, r3.x, r2.xyww, r4
    mad_pp r2.xyz, r3.z, r5, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 86 instruction slots used (3 texture, 83 arithmetic)
