//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float2 mrgFresnelParam;
//   float4 mrgTexcoordIndex[4];
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   g_EyePosition    c178     1
//   mrgTexcoordIndex c187     1
//   mrgFresnelParam  c193     1
//   g_MtxProjection  c224     4
//   g_MtxView        c228     4
//   g_MtxWorld       c232     4
//

    vs_3_0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color v5
    dcl_normal v6
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord4 o2
    dcl_texcoord5 o3
    dcl_color o4
    mul r0, c233, v0.y
    mad r0, v0.x, c232, r0
    mad r0, v0.z, c234, r0
    mad r0, v0.w, c235, r0
    mul r1, r0.y, c229
    mad r1, r0.x, c228, r1
    mad r1, r0.z, c230, r1
    mad r1, r0.w, c231, r1
    add r0.xyz, -r0, c178
    nrm r2.xyz, r0
    mul r0, r1.y, c225
    mad r0, r1.x, c224, r0
    mad r0, r1.z, c226, r0
    mad o0, r1.w, c227, r0
    mul r0.xyz, c233, v6.y
    mad r0.xyz, v6.x, c232, r0
    mad r0.xyz, v6.z, c234, r0
    nrm r1.xyz, r0
    dp3_sat r0.x, r1, r2
    mov o3.xyz, r2
    mov o2.xyz, r1
    add r0.x, -r0.x, c0.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mov r1.x, c0.x
    add r0.y, r1.x, -c193.x
    mad o2.w, r0.x, r0.y, c193.x
    slt r0.xy, c187, -c187
    frc r0.zw, c187.xyxy
    add r1.xy, -r0.zwzw, c187
    slt r0.zw, -r0, r0
    mad r0.xy, r0, r0.zwzw, r1
    mova a0.xy, r0
    mul r0.xy, v1, c0[a0.x].x
    mad r0.xy, c0[a0.x].y, v2, r0
    mad r0.xy, c0[a0.x].z, v3, r0
    mad o1.xy, c0[a0.x].w, v4, r0
    mul r0.xy, v1, c0[a0.y].x
    mad r0.xy, c0[a0.y].y, v2, r0
    mad r0.xy, c0[a0.y].z, v3, r0
    mad o1.zw, c0[a0.y].w, v4.xyxy, r0.xyxy
    mov o3.w, c0.w
    mov o4, v5

// approximately 48 instruction slots used
