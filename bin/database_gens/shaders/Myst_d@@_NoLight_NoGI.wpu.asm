//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   sampler2D g_DepthSampler;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float2 mrgMystParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_MtxInvProjection                    c4       4
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   mrgMystParam                          c150     1
//   sampDif                               s0       1
//   g_VerticalShadowMapSampler            s7       1
//   g_DepthSampler                        s12      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -2, -1, 3
    def c1, 0.5, 1, 0, -1
    def c2, 0.5, -0.5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s7
    dcl_2d s12
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c0.y, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c3.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c3.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c3.y, r2.y
    rcp r1.y, v4.w
    mul r1.yz, r1.y, v4.xxyw
    mad r1.yz, r1, c0.x, c0.z
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.y, r1.y, r1.z
    lrp_pp r3.x, r2.y, c3.y, r1.x
    mul_pp r1.x, r3.x, c77.w
    nrm_pp r3.xyz, v3
    dp3_pp r1.y, r3, -c10
    mul r2.yzw, r1.y, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r1.yzw, r1.y, r2, c3.x
    dp3_pp r0.y, r3, -r0.yzww
    mul_pp r2.yzw, c58.w, c58.xxyz
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    mov r4.xyz, c79
    add r1.yzw, -r4.xxyz, c80.xxyz
    mad_pp r2.yzw, r3.xxyz, c1.x, c1.x
    mul_pp r3.xyz, r3, r3
    mad r1.yzw, r2.z, r1, c79.xxyz
    mul r1.yzw, r1, r3.y
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r2.y, r4, c77
    mad_pp r1.yzw, r3.x, r4.xxyz, r1
    mov r4.xyz, c81
    add r3.xyw, -r4.xyzz, c82.xyzz
    mad r2.yzw, r2.w, r3.xxyw, c81.xxyz
    mad_pp r1.yzw, r3.z, r2, r1
    mul_pp r2.yzw, r1, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2
    mad_pp r1.xyz, r1.x, r1.yzww, r2.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.x, -r0.w, c3.x, c3.y
    add r0.w, -r0.w, c26.x
    cmp r1.x, c26.x, r2.x, r1.x
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c3
    cmp r2.xy, -r1_abs.x, v0, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.xyz, r0, r1
    mul_pp r1.x, r1.w, c16.w
    add r1.yz, c1.x, vPos.xxyw
    mul r1.yz, r1, c24.xzww
    mov r2.yzw, c1
    mad r2, c24.zzww, r2.yzzw, r2.zywz
    mad r1.yz, r1, c0.xxyw, r2.xxyw
    add r1.yz, r2.xzww, r1
    mul r2.xy, r1.z, c5.zwzw
    mad r2.xy, r1.y, c4.zwzw, r2
    mad r1.yz, r1, c2.xxyw, c2.x
    texld r3, r1.yzzw, s12
    mad r1.yz, r3.x, c6.xzww, r2.xxyw
    add r1.yz, r1, c7.xzww
    rcp r1.z, r1.z
    mad r1.y, r1.y, -r1.z, -v2.w
    add r1.y, r1.y, -c150.x
    rcp r1.z, c150.y
    mul_sat_pp r1.y, r1.z, r1.y
    mul_pp r1.x, r1.y, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 116 instruction slots used (4 texture, 112 arithmetic)
