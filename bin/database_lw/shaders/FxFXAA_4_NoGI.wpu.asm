//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//   sampler2D s0;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c24      1
//   s0             s0       1
//

    ps_3_0
    def c0, 1.9632107, 0.125, -0.0416666679, 0.25
    def c1, 1.33333337, 0.75, 0.111111112, 0
    def c2, 0.5, 0, -1, 1
    dcl vPos.xy
    dcl_2d s0
    add r0.xy, c2.x, vPos
    mul r1.xy, r0, c24.zwzw
    mov r2.yzw, c2
    mad r3, c24.zwzw, r2.wzzw, r1.xyxy
    mul r4, r3.zwxx, c2.wwyy
    mul r3, r3.xyxx, c2.wwyy
    texldl r3, r3, s0
    texldl r4, r4, s0
    mad r0.z, r4.y, c0.x, r4.x
    mad r5, c24.zwzw, r2.wyyw, r1.xyxy
    mul r6, r5.zwxx, c2.wwyy
    mul r5, r5.xyxx, c2.wwyy
    texldl r5, r5, s0
    texldl r6, r6, s0
    mad r0.w, r6.y, c0.x, r6.x
    mul r2.x, r0.w, -c2.x
    mad r2.x, r0.z, c0.w, r2.x
    mov r7.zw, c2.y
    mad r7.xy, r0, c24.zwzw, c24.zwzw
    texldl r7, r7, s0
    mad r3.w, r7.y, c0.x, r7.x
    mad r2.x, r3.w, c0.w, r2.x
    mov r8.zw, c2.y
    mad r8.xy, r0, c24.zwzw, -c24.zwzw
    texldl r8, r8, s0
    mad r4.w, r8.y, c0.x, r8.x
    add r8.xyz, r3, r8
    mad r3.x, r3.y, c0.x, r3.x
    add r4.xyz, r4, r8
    add r4.xyz, r7, r4
    mad r7, c24.zwzw, r2.yzzy, r1.xyxy
    mul r8, r7.xyxx, c2.wwyy
    mul r7, r7.zwxx, c2.wwyy
    texldl r7, r7, s0
    texldl r8, r8, s0
    mad r2.z, r8.y, c0.x, r8.x
    add r8.xyz, r7, r8
    mad r3.y, r7.y, c0.x, r7.x
    mul r3.z, r2.z, -c2.x
    mad r3.z, r4.w, c0.w, r3.z
    mad r3.z, r3.x, c0.w, r3.z
    mad r5.w, r5.y, c0.x, r5.x
    mov r1.zw, c2.y
    texldl r1, r1, s0
    mad r1.w, r1.y, c0.x, r1.x
    mad r6.w, r3.y, c2.x, -r1.w
    mad r6.w, r5.w, c2.x, r6.w
    add r3.z, r3_abs.z, r6_abs.w
    add r2.x, r2_abs.x, r3.z
    mul r3.z, r5.w, -c2.x
    mad r3.x, r3.x, c0.w, r3.z
    mad r3.x, r3.w, c0.w, r3.x
    mul r3.z, r3.y, -c2.x
    mad r3.z, r4.w, c0.w, r3.z
    mad r0.z, r0.z, c0.w, r3.z
    mad r3.z, r2.z, c2.x, -r1.w
    mad r3.z, r0.w, c2.x, r3.z
    add r0.z, r0_abs.z, r3_abs.z
    add r0.z, r3_abs.x, r0.z
    add r0.z, -r2.x, r0.z
    cmp r2.x, r0.z, r2.z, r3.y
    add r3.x, -r1.w, r2.x
    add r2.x, r1.w, r2.x
    mul r2.x, r2.x, c2.x
    cmp r3.z, r0.z, r0.w, r5.w
    add r3.w, -r1.w, r3.z
    add r3.z, r1.w, r3.z
    mul r3.z, r3.z, c2.x
    add r4.w, -r3_abs.w, r3_abs.x
    max r6.w, r3_abs.x, r3_abs.w
    cmp r2.x, r4.w, r2.x, r3.z
    cmp r3.x, r0.z, -c24.w, -c24.z
    cmp r3.x, r4.w, r3.x, -r3.x
    mul r3.z, r3.x, c2.x
    cmp r3.w, r0.z, c2.y, r3.z
    cmp r3.z, r0.z, r3.z, c2.y
    mad r7.y, r0.y, c24.w, r3.z
    mad r7.x, r0.x, c24.z, r3.w
    mul r3.zw, r2.xywy, c24.z
    mul r2.yw, r2, c24.xzzw
    cmp r2.yw, r0.z, r3.xzzw, r2
    add r9.xy, -r2.ywzw, r7
    add r7.xy, r2.ywzw, r7
    mov r10.xy, r9
    mov r10.zw, r7.xyxy
    mov r9.zw, c2.y
    texldl r9, r9, s0
    mad r9.x, r9.y, c0.x, r9.x
    add r3.zw, -r2.xyyw, r10.xyxy
    mov r7.zw, c2.y
    texldl r11, r7, s0
    mad r9.y, r11.y, c0.x, r11.x
    add r7.zw, -r2.x, r9.xyxy
    mad r7.zw, r6.w, -c0.w, r7_abs
    cmp r11.xy, r7.z, r10, r3.zwzw
    add r3.zw, r2.xyyw, r7.xyxy
    cmp r11.zw, r7.w, r7.xyxy, r3
    cmp r9.zw, r7, c2.w, c2.y
    mul r3.z, r9.w, r9.z
    cmp r11, -r3.z, r11, r10
    mul r12, r11.xyxx, c2.wwyy
    texldl r12, r12, s0
    mad r3.w, r12.y, c0.x, r12.x
    cmp r12.x, r7.z, r9.x, r3.w
    mul r13, r11.zwxx, c2.wwyy
    texldl r13, r13, s0
    mad r3.w, r13.y, c0.x, r13.x
    cmp r12.y, r7.w, r9.y, r3.w
    add r7.xy, -r2.x, r12
    mad r7.xy, r6.w, -c0.w, r7_abs
    cmp r7.xy, r7, c2.w, c2.y
    add r7.xy, r7, r9.zwzw
    add r7.zw, -r2.xyyw, r11.xyxy
    cmp r13.xy, -r7.x, r7.zwzw, r11
    add r7.zw, r2.xyyw, r11
    cmp r13.zw, -r7.y, r7, r11
    cmp r12.zw, -r7.xyxy, c2.y, c2.w
    mul r3.w, r12.w, r12.z
    cmp r7, -r3.z, r12, r9
    cmp r9, -r3.w, r13, r11
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r9, r10
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.zw, -r2.xyyw, r9.xyxy
    add r11.xy, r7.zwzw, r11
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r9, -r3.z, r10, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.z, -r3.z, r3.w, c2.w
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    mul r10, r9.zwxx, c2.wwyy
    texldl r10, r10, s0
    mad r4.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    cmp r10.y, -r7.w, r4.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.xz, r2.yyww, r9.zyww
    cmp r12.zw, -r11.y, r11.xyxz, r9
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r4.w, -r3.z, r3.w, c2.w
    cmp r10, -r3.w, r12, r9
    cmp r9, -r3.z, r10, r9
    add r3.w, r3.z, r4.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.z, -r3.z, r3.w, c2.w
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    cmp r10, -r3.z, r12, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    add r11.zw, -r2.xyyw, r9.xyxy
    cmp r12.xy, -r11.x, r11.zwzw, r9
    add r11.zw, r2.xyyw, r9
    cmp r12.zw, -r11.y, r11, r9
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r10, -r3.w, r12, r9
    cmp r3.w, -r3.z, r3.w, c2.w
    add r3.w, r3.z, r3.w
    cmp r3.w, -r3.w, c2.y, c2.w
    cmp r3.w, -r3.z, r3.w, c2.w
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.z, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.z, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.z, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.z, r10.w, r10.z
    cmp r7, -r3.w, r10, r7
    add r10.xy, -r2.ywzw, r9
    cmp r10.xy, -r11.x, r10, r9
    add r11.xz, r2.yyww, r9.zyww
    cmp r10.zw, -r11.y, r11.xyxz, r9
    cmp r10, -r3.z, r10, r9
    cmp r3.z, -r3.w, r3.z, c2.w
    add r3.z, r3.w, r3.z
    cmp r3.z, -r3.z, c2.y, c2.w
    cmp r3.z, -r3.w, r3.z, c2.w
    cmp r9, -r3.w, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.x, -r7.z, r3.w, r7.x
    mul r11, r9.zwxx, c2.wwyy
    texldl r11, r11, s0
    mad r3.w, r11.y, c0.x, r11.x
    cmp r10.y, -r7.w, r3.w, r7.y
    add r11.xy, -r2.x, r10
    mad r11.xy, r6.w, -c0.w, r11_abs
    cmp r11.xy, r11, c2.w, c2.y
    add r11.xy, r7.zwzw, r11
    cmp r10.zw, -r11.xyxy, c2.y, c2.w
    mul r3.w, r10.w, r10.z
    cmp r7, -r3.z, r10, r7
    cmp r4.w, -r3.z, r3.w, c2.w
    add r4.w, r3.z, r4.w
    cmp r4.w, -r4.w, c2.y, c2.w
    cmp r4.w, -r3.z, r4.w, c2.w
    add r10.xy, -r2.ywzw, r9
    cmp r10.xy, -r11.x, r10, r9
    add r11.xz, r2.yyww, r9.zyww
    cmp r10.zw, -r11.y, r11.xyxz, r9
    cmp r10, -r3.w, r10, r9
    cmp r9, -r3.z, r10, r9
    mul r10, r9.xyxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.z, r10.y, c0.x, r10.x
    mul r10, r9.zwxx, c2.wwyy
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.xy, -r7.zwzw, r3.zwzw, r7
    add r3.zw, -r2.x, r10.xyxy
    mad r3.zw, r6.w, -c0.w, r3_abs
    cmp r3.zw, r3, c2.w, c2.y
    add r3.zw, r3, r7
    cmp r10.zw, -r3, c2.y, c2.w
    add r11.xy, -r2.ywzw, r9
    cmp r11.xy, -r3.z, r11, r9
    add r12.xy, r2.ywzw, r9.zwzw
    cmp r11.zw, -r3.w, r12.xyxy, r9
    cmp r7, -r4.w, r10, r7
    mul r3.z, r10.w, r10.z
    cmp r10, -r3.z, r11, r9
    cmp r9, -r4.w, r10, r9
    cmp r3.z, -r4.w, r3.z, c2.w
    add r3.z, r4.w, r3.z
    cmp r3.z, -r3.z, -c2.y, -c2.w
    cmp r3.z, -r4.w, r3.z, c2.z
    mul r10, r9.xyxx, c2.wwyy
    mul r11, r9.zwxx, c2.wwyy
    add r12.xy, -r2.ywzw, r9
    add r2.yw, r2, r9.xzzw
    texldl r10, r10, s0
    mad r3.w, r10.y, c0.x, r10.x
    cmp r10.z, -r7.z, r3.w, r7.x
    texldl r13, r11, s0
    mad r3.w, r13.y, c0.x, r13.x
    cmp r10.w, -r7.w, r3.w, r7.y
    add r12.zw, -r2.x, r10
    mad r12.zw, r6.w, -c0.w, r12_abs
    cmp r12.zw, r12, c2.w, c2.y
    add r7.zw, r7, r12
    mov r11.zw, r7.xyxy
    cmp r12.xy, -r7.z, r12, r9
    cmp r12.zw, -r7.w, r2.xyyw, r9
    cmp r2.y, -r7.w, -c2.y, -c2.w
    cmp r2.y, -r7.z, -c2.y, r2.y
    cmp r7, r2.y, r12, r9
    cmp r2.yw, r3.z, r7.xxzy, r9.xxzy
    mov r10.xy, r7.zwzw
    cmp r7, r3.z, r10, r11
    mad r2.yw, r0.xxzy, c24.xzzw, -r2
    cmp r2.y, r0.z, r2.y, r2.w
    min r4.w, r3.y, r2.z
    min r2.w, r5.w, r0.w
    min r3.z, r2.w, r4.w
    min r2.w, r3.z, r1.w
    max r4.w, r2.z, r3.y
    add r2.z, r2.z, r3.y
    add r2.z, r5.w, r2.z
    max r3.y, r0.w, r5.w
    add r0.w, r0.w, r2.z
    mad r0.w, r0.w, c0.w, -r1.w
    max r2.z, r4.w, r3.y
    max r3.y, r1.w, r2.z
    add r1.w, r1.w, -r2.x
    cmp r1.w, r1.w, c2.y, c2.w
    add r2.z, -r2.w, r3.y
    mul r2.w, r3.y, c0.y
    min r3.y, -r2.w, c0.z
    add r2.w, r2.z, r3.y
    rcp r2.z, r2.z
    mad r0.w, r0_abs.w, r2.z, -c0.w
    mul r2.z, r0.w, c1.x
    cmp r0.w, r0.w, r2.z, c2.y
    min r2.z, r0.w, c1.y
    mad r3.yz, r0.xxyw, -c24.xzww, r7.xxyw
    cmp r0.w, r0.z, r3.y, r3.z
    add r3.y, -r0.w, r2.y
    cmp r3.y, r3.y, r7.w, r7.z
    add r2.x, -r2.x, r3.y
    cmp r2.x, r2.x, -c2.y, -c2.w
    add r1.w, r1.w, r2.x
    cmp r1.w, -r1_abs.w, c2.y, r3.x
    add r2.x, r2.y, r0.w
    min r3.x, r0.w, r2.y
    rcp r0.w, r2.x
    mad r0.w, r3.x, -r0.w, c2.x
    mul r0.w, r1.w, r0.w
    cmp r1.w, r0.z, c2.y, r0.w
    cmp r0.z, r0.z, r0.w, c2.y
    mad r3.y, r0.y, c24.w, r0.z
    mad r3.x, r0.x, c24.z, r1.w
    mov r3.zw, c2.y
    texldl r0, r3, s0
    add r3.xyz, r1, r8
    add r3.xyz, r5, r3
    add r3.xyz, r6, r3
    add r3.xyz, r4, r3
    mul r3.xyz, r2.z, r3
    mad r3.xyz, r3, c1.z, r0
    mad r0.xyz, -r2.z, r0, r3
    cmp oC0.xyz, r2.w, r0, r1
    mov oC0.w, c2.w

// approximately 783 instruction slots used (116 texture, 667 arithmetic)
