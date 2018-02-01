// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:3554,x:32480,y:32959,varname:node_3554,prsc:2|emission-5151-OUT;n:type:ShaderForge.SFN_Color,id:8306,x:31772,y:32686,ptovrint:False,ptlb:Sky Color,ptin:_SkyColor,varname:node_8306,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.02553246,c2:0.03709318,c3:0.1827586,c4:1;n:type:ShaderForge.SFN_ViewVector,id:2265,x:31161,y:32872,varname:node_2265,prsc:2;n:type:ShaderForge.SFN_Dot,id:7606,x:31418,y:32953,varname:node_7606,prsc:2,dt:1|A-2265-OUT,B-3211-OUT;n:type:ShaderForge.SFN_Vector3,id:3211,x:31161,y:32997,varname:node_3211,prsc:2,v1:0,v2:-1,v3:0;n:type:ShaderForge.SFN_Color,id:3839,x:32483,y:32812,ptovrint:False,ptlb:Horizon Color,ptin:_HorizonColor,varname:_GroundColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4841047,c2:0.5149937,c3:0.5441177,c4:1;n:type:ShaderForge.SFN_Power,id:4050,x:31772,y:32995,varname:node_4050,prsc:2|VAL-6125-OUT,EXP-7609-OUT;n:type:ShaderForge.SFN_Vector1,id:7609,x:31587,y:33095,varname:node_7609,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:6125,x:31587,y:32953,varname:node_6125,prsc:2|IN-7606-OUT;n:type:ShaderForge.SFN_Lerp,id:2737,x:31999,y:32869,cmnt:Sky,varname:node_2737,prsc:2|A-8306-RGB,B-3839-RGB,T-4050-OUT;n:type:ShaderForge.SFN_LightVector,id:3559,x:30723,y:33040,cmnt:Auto-adapts to your directional light,varname:node_3559,prsc:2;n:type:ShaderForge.SFN_Dot,id:1472,x:31082,y:33150,cmnt:Linear falloff to sun angle,varname:node_1472,prsc:2,dt:1|A-8269-OUT,B-8750-OUT;n:type:ShaderForge.SFN_ViewVector,id:8750,x:30895,y:33160,varname:node_8750,prsc:2;n:type:ShaderForge.SFN_Add,id:7568,x:32137,y:33075,cmnt:Sky plus Sun,varname:node_7568,prsc:2|A-2737-OUT,B-5855-OUT;n:type:ShaderForge.SFN_Negate,id:8269,x:30895,y:33040,varname:node_8269,prsc:2|IN-3559-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3001,x:31383,y:33282,cmnt:Modify radius of falloff,varname:node_3001,prsc:2|IN-1472-OUT,IMIN-1476-OUT,IMAX-1574-OUT,OMIN-9430-OUT,OMAX-6262-OUT;n:type:ShaderForge.SFN_Slider,id:2435,x:30320,y:33466,ptovrint:False,ptlb:Sun Radius B,ptin:_SunRadiusB,varname:node_2435,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.1;n:type:ShaderForge.SFN_Slider,id:3144,x:30320,y:33360,ptovrint:False,ptlb:Sun Radius A,ptin:_SunRadiusA,varname:_SunOuterRadius_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Vector1,id:9430,x:31082,y:33610,varname:node_9430,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6262,x:31082,y:33668,varname:node_6262,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:7022,x:31556,y:33282,varname:node_7022,prsc:2|IN-3001-OUT;n:type:ShaderForge.SFN_OneMinus,id:1574,x:31082,y:33464,varname:node_1574,prsc:2|IN-8889-OUT;n:type:ShaderForge.SFN_OneMinus,id:1476,x:31082,y:33315,varname:node_1476,prsc:2|IN-3432-OUT;n:type:ShaderForge.SFN_Multiply,id:8889,x:30893,y:33464,varname:node_8889,prsc:2|A-9367-OUT,B-9367-OUT;n:type:ShaderForge.SFN_Multiply,id:3432,x:30893,y:33315,varname:node_3432,prsc:2|A-7933-OUT,B-7933-OUT;n:type:ShaderForge.SFN_Max,id:9367,x:30681,y:33464,varname:node_9367,prsc:2|A-3144-OUT,B-2435-OUT;n:type:ShaderForge.SFN_Min,id:7933,x:30681,y:33315,varname:node_7933,prsc:2|A-3144-OUT,B-2435-OUT;n:type:ShaderForge.SFN_Power,id:754,x:31772,y:33336,varname:node_754,prsc:2|VAL-7022-OUT,EXP-5929-OUT;n:type:ShaderForge.SFN_Vector1,id:5929,x:31556,y:33412,varname:node_5929,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:5855,x:31957,y:33257,cmnt:Sun,varname:node_5855,prsc:2|A-2359-RGB,B-754-OUT,C-7055-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7055,x:31772,y:33484,ptovrint:False,ptlb:Sun Intensity,ptin:_SunIntensity,varname:node_7055,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_LightColor,id:2359,x:31772,y:33210,cmnt:Get color from directional light,varname:node_2359,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:6975,x:30840,y:32666,varname:node_6975,prsc:2;n:type:ShaderForge.SFN_Normalize,id:1894,x:31070,y:32625,varname:node_1894,prsc:2|IN-6975-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5666,x:31260,y:32454,varname:node_5666,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1894-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6877,x:31232,y:32703,varname:node_6877,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1894-OUT;n:type:ShaderForge.SFN_OneMinus,id:2217,x:31587,y:32726,varname:node_2217,prsc:2|IN-5122-OUT;n:type:ShaderForge.SFN_Clamp01,id:5122,x:31418,y:32726,varname:node_5122,prsc:2|IN-6877-OUT;n:type:ShaderForge.SFN_Tex2d,id:5587,x:32090,y:32477,ptovrint:False,ptlb:cloudslow,ptin:_cloudslow,varname:node_5587,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-5864-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8107,x:31601,y:32564,varname:node_8107,prsc:2|A-5666-OUT,B-2217-OUT;n:type:ShaderForge.SFN_Power,id:5578,x:32100,y:32664,varname:node_5578,prsc:2|VAL-5122-OUT,EXP-5392-OUT;n:type:ShaderForge.SFN_Slider,id:5392,x:31633,y:32323,ptovrint:False,ptlb:heightcutoof,ptin:_heightcutoof,varname:node_5392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:3,max:7;n:type:ShaderForge.SFN_Add,id:2531,x:31802,y:32464,varname:node_2531,prsc:2|A-5666-OUT,B-8107-OUT;n:type:ShaderForge.SFN_Multiply,id:4134,x:32317,y:32711,varname:node_4134,prsc:2|A-5587-RGB,B-5578-OUT;n:type:ShaderForge.SFN_Add,id:5151,x:32271,y:32916,varname:node_5151,prsc:2|A-4040-OUT,B-7568-OUT;n:type:ShaderForge.SFN_Panner,id:5864,x:32390,y:32387,varname:node_5864,prsc:2,spu:0.1,spv:0.1|UVIN-2531-OUT,DIST-6781-OUT;n:type:ShaderForge.SFN_Slider,id:9975,x:31782,y:32125,ptovrint:False,ptlb:cloudspeed,ptin:_cloudspeed,varname:node_9975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:2000,x:32005,y:32279,varname:node_2000,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6781,x:32145,y:32202,varname:node_6781,prsc:2|A-9975-OUT,B-2000-TTR;n:type:ShaderForge.SFN_Vector1,id:9041,x:31860,y:32215,varname:node_9041,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Panner,id:7752,x:32437,y:32096,varname:node_7752,prsc:2,spu:0.1,spv:0.1|UVIN-2531-OUT,DIST-542-OUT;n:type:ShaderForge.SFN_Tex2d,id:9202,x:32574,y:32403,ptovrint:False,ptlb:cloudshigh,ptin:_cloudshigh,varname:node_9202,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-7752-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9111,x:32574,y:32620,varname:node_9111,prsc:2|A-9202-RGB,B-5578-OUT;n:type:ShaderForge.SFN_Add,id:3653,x:32745,y:32722,varname:node_3653,prsc:2|A-9111-OUT,B-4134-OUT;n:type:ShaderForge.SFN_Tex2d,id:4473,x:32727,y:32094,ptovrint:False,ptlb:stars,ptin:_stars,varname:node_4473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2531-OUT;n:type:ShaderForge.SFN_Multiply,id:1697,x:32819,y:32420,varname:node_1697,prsc:2|A-4473-RGB,B-5578-OUT;n:type:ShaderForge.SFN_Add,id:9197,x:32958,y:32718,varname:node_9197,prsc:2|A-1697-OUT,B-3653-OUT;n:type:ShaderForge.SFN_Multiply,id:542,x:32233,y:32059,varname:node_542,prsc:2|A-6781-OUT,B-9041-OUT;n:type:ShaderForge.SFN_Multiply,id:4239,x:32830,y:32947,varname:node_4239,prsc:2|A-3839-RGB,B-9197-OUT;n:type:ShaderForge.SFN_Color,id:625,x:33029,y:32949,ptovrint:False,ptlb:cloudcolor,ptin:_cloudcolor,varname:node_625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:4040,x:33220,y:32845,varname:node_4040,prsc:2|A-625-RGB,B-4239-OUT;proporder:8306-3839-2435-3144-7055-5587-5392-9975-625-9202-4473;pass:END;sub:END;*/

Shader "Custom/simplesky" {
    Properties {
        _SkyColor ("Sky Color", Color) = (0.02553246,0.03709318,0.1827586,1)
        _HorizonColor ("Horizon Color", Color) = (0.4841047,0.5149937,0.5441177,1)
        _SunRadiusB ("Sun Radius B", Range(0, 0.1)) = 0.1
        _SunRadiusA ("Sun Radius A", Range(0, 0.1)) = 0
        _SunIntensity ("Sun Intensity", Float ) = 2
        _cloudslow ("cloudslow", 2D) = "black" {}
        _heightcutoof ("heightcutoof", Range(0.5, 7)) = 3
        _cloudspeed ("cloudspeed", Range(0, 1)) = 0
        _cloudcolor ("cloudcolor", Color) = (0.5,0.5,0.5,1)
        _cloudshigh ("cloudshigh", 2D) = "black" {}
        _stars ("stars", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _SkyColor;
            uniform float4 _HorizonColor;
            uniform float _SunRadiusB;
            uniform float _SunRadiusA;
            uniform float _SunIntensity;
            uniform sampler2D _cloudslow; uniform float4 _cloudslow_ST;
            uniform float _heightcutoof;
            uniform float _cloudspeed;
            uniform sampler2D _cloudshigh; uniform float4 _cloudshigh_ST;
            uniform sampler2D _stars; uniform float4 _stars_ST;
            uniform float4 _cloudcolor;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float3 node_1894 = normalize(i.posWorld.rgb);
                float2 node_5666 = node_1894.rb;
                float node_5122 = saturate(node_1894.g);
                float2 node_2531 = (node_5666+(node_5666*(1.0 - node_5122)));
                float4 _stars_var = tex2D(_stars,TRANSFORM_TEX(node_2531, _stars));
                float node_5578 = pow(node_5122,_heightcutoof);
                float4 node_2000 = _Time + _TimeEditor;
                float node_6781 = (_cloudspeed*node_2000.a);
                float2 node_7752 = (node_2531+(node_6781*0.5)*float2(0.1,0.1));
                float4 _cloudshigh_var = tex2D(_cloudshigh,TRANSFORM_TEX(node_7752, _cloudshigh));
                float2 node_5864 = (node_2531+node_6781*float2(0.1,0.1));
                float4 _cloudslow_var = tex2D(_cloudslow,TRANSFORM_TEX(node_5864, _cloudslow));
                float node_7933 = min(_SunRadiusA,_SunRadiusB);
                float node_1476 = (1.0 - (node_7933*node_7933));
                float node_9367 = max(_SunRadiusA,_SunRadiusB);
                float node_9430 = 1.0;
                float3 emissive = ((_cloudcolor.rgb*(_HorizonColor.rgb*((_stars_var.rgb*node_5578)+((_cloudshigh_var.rgb*node_5578)+(_cloudslow_var.rgb*node_5578)))))+(lerp(_SkyColor.rgb,_HorizonColor.rgb,pow((1.0 - max(0,dot(viewDirection,float3(0,-1,0)))),2.0))+(_LightColor0.rgb*pow(saturate((node_9430 + ( (max(0,dot((-1*lightDirection),viewDirection)) - node_1476) * (0.0 - node_9430) ) / ((1.0 - (node_9367*node_9367)) - node_1476))),5.0)*_SunIntensity)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
