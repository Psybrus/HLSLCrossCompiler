//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Texture                           sampler      NA          NA    0        1
// Texture                           texture  float4          2d    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                 1   xy          1     NONE   float   xy  
// TEXCOORD                 2     zw        1     NONE   float     zw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xy
dcl_input_ps linear v1.zw
dcl_output o0.xyzw
dcl_temps 3
sample r0.xyzw, v0.yzyy, t0.xyzw, s0
mul r1.x, r0.w, v1.x
lt r1.x, l(0.250980), r1.x
and r0.xyzw, r0.xyzw, r1.xxxx
add r1.x, -v1.x, l(1.000000)
sample r2.xyzw, v0.xzxx, t0.xyzw, s0
mul r1.x, r1.x, r2.w
lt r1.x, l(0.250980), r1.x
movc r0.xyzw, r1.xxxx, r2.xyzw, r0.xyzw
sample r1.xyzw, v1.zwzz, t0.xyzw, s0
mul r2.x, r1.w, v1.y
lt r2.x, l(0.250980), r2.x
movc o0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
ret 
// Approximately 14 instruction slots used
