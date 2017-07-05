xof 0302txt 0032

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Quaternion {
 <10DD46A3-775B-11cf-8F52-0040333594A3>
 FLOAT s;
 Vector v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Mesh mesh0 {
	12;
	-2770.380615;-0.768864;-839.010193;,
	-2770.391602;104.556396;-839.316711;,
	-2770.402344;209.881653;-839.623169;,
	-2715.759521;210.035400;-788.736694;,
	-2661.116699;210.189148;-737.850159;,
	-2715.845947;41.825729;-788.343811;,
	-2739.556885;41.759018;-810.424805;,
	-2739.694092;91.482727;-810.692566;,
	-2715.851074;91.526688;-788.488464;,
	-2715.856201;140.999573;-788.632446;,
	-2661.213379;141.316162;-737.746399;,
	-2715.841553;-0.615412;-788.220337;;

	10;
	3;6;0;1;,
	3;11;0;6;,
	3;9;1;2;,
	3;6;1;7;,
	3;1;9;7;,
	3;9;8;7;,
	3;6;5;11;,
	3;4;10;3;,
	3;9;3;10;,
	3;2;3;9;;

	MeshNormals {
		12;
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;,
		0.681507;-0.002059;-0.731808;;

		10;
		3;6;0;1;,
		3;11;0;6;,
		3;9;1;2;,
		3;6;1;7;,
		3;1;9;7;,
		3;9;8;7;,
		3;6;5;11;,
		3;4;10;3;,
		3;9;3;10;,
		3;2;3;9;;
	}

	MeshTextureCoords  {
		12;
		0.000000;1.000000;,
		0.000000;0.500000;,
		0.000000;0.000000;,
		0.500000;0.000000;,
		1.000000;0.000000;,
		0.499050;0.798523;,
		0.282088;0.798523;,
		0.280878;0.562473;,
		0.499050;0.562583;,
		0.499050;0.327725;,
		0.999050;0.326952;,
		0.499050;1.000000;;

	}

	MeshMaterialList {
		1;
		10;
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0;;
		Material mat-1 {
			1.000000;1.000000;1.000000;1.000000;;
			0;
			0.000000;0.000000;0.000000;;
			0.000000;0.000000;0.000000;;
		}
	}
}

Mesh mesh1 {
	32;
	-2690.327148;-0.616012;-816.045715;,
	-2715.856201;41.825310;-788.632446;,
	-2715.856201;20.604649;-788.632446;,
	-2715.856201;-0.616012;-788.632446;,
	-2664.872803;-0.616012;-843.378906;,
	-2664.872803;20.715414;-843.378906;,
	-2664.872803;42.046841;-843.378906;,
	-2653.733398;42.046841;-855.340515;,
	-2642.593994;42.046841;-867.302124;,
	-2642.699219;66.896645;-867.189026;,
	-2642.804443;91.746445;-867.075928;,
	-2653.882813;91.757935;-855.180054;,
	-2664.960938;91.769424;-843.284180;,
	-2664.969238;75.572639;-843.275146;,
	-2677.780762;75.572639;-829.518188;,
	-2690.592041;75.572639;-815.761230;,
	-2690.653564;100.434784;-815.695129;,
	-2690.715088;125.296928;-815.629028;,
	-2677.842285;125.285370;-829.452087;,
	-2664.969238;125.273804;-843.275146;,
	-2664.969238;141.162430;-843.275146;,
	-2681.931641;141.108139;-825.060913;,
	-2698.893799;141.053864;-806.846680;,
	-2715.856201;140.999573;-788.632446;,
	-2715.856201;116.263023;-788.632446;,
	-2715.856201;91.526474;-788.632446;,
	-2726.958252;91.538040;-776.710876;,
	-2738.060303;91.549599;-764.789368;,
	-2737.998779;66.687454;-764.855469;,
	-2737.937256;41.825310;-764.921570;,
	-2726.896729;41.825310;-776.776978;,
	-2690.327148;34.828598;-816.045715;;

	30;
	3;1;30;28;,
	3;29;28;30;,
	3;31;2;1;,
	3;3;2;0;,
	3;25;1;28;,
	3;1;15;31;,
	3;15;1;25;,
	3;28;26;25;,
	3;24;16;25;,
	3;28;27;26;,
	3;17;24;22;,
	3;22;24;23;,
	3;22;21;17;,
	3;16;24;17;,
	3;16;15;25;,
	3;31;0;2;,
	4;31;5;4;0;,
	3;31;14;6;,
	3;6;5;31;,
	3;7;6;13;,
	3;7;9;8;,
	3;13;6;14;,
	3;7;13;9;,
	3;20;19;18;,
	3;18;21;20;,
	3;18;17;21;,
	3;13;11;9;,
	3;10;9;11;,
	3;13;12;11;,
	3;31;15;14;;

	MeshNormals {
		32;
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;;

		30;
		3;1;30;28;,
		3;29;28;30;,
		3;31;2;1;,
		3;3;2;0;,
		3;25;1;28;,
		3;1;15;31;,
		3;15;1;25;,
		3;28;26;25;,
		3;24;16;25;,
		3;28;27;26;,
		3;17;24;22;,
		3;22;24;23;,
		3;22;21;17;,
		3;16;24;17;,
		3;16;15;25;,
		3;31;0;2;,
		4;31;5;4;0;,
		3;31;14;6;,
		3;6;5;31;,
		3;7;6;13;,
		3;7;9;8;,
		3;13;6;14;,
		3;7;13;9;,
		3;20;19;18;,
		3;18;21;20;,
		3;18;17;21;,
		3;13;11;9;,
		3;10;9;11;,
		3;13;12;11;,
		3;31;15;14;;
	}

	MeshTextureCoords  {
		32;
		0.500000;1.000000;,
		0.232586;0.700650;,
		0.232586;0.850325;,
		0.232586;1.000000;,
		0.766632;1.000000;,
		0.766632;0.849544;,
		0.766632;0.699088;,
		0.883316;0.699088;,
		1.000000;0.699088;,
		0.998897;0.523816;,
		0.997794;0.348544;,
		0.881751;0.348463;,
		0.765708;0.348382;,
		0.765620;0.462622;,
		0.631422;0.462622;,
		0.497224;0.462622;,
		0.496580;0.287263;,
		0.495935;0.111903;,
		0.630778;0.111985;,
		0.765620;0.112067;,
		0.765620;0.000000;,
		0.587942;0.000383;,
		0.410264;0.000766;,
		0.232586;0.001149;,
		0.232586;0.175622;,
		0.232586;0.350095;,
		0.116293;0.350014;,
		0.000000;0.349932;,
		0.000645;0.525291;,
		0.001289;0.700650;,
		0.116938;0.700650;,
		0.500000;0.750000;;

	}

	MeshMaterialList {
		1;
		30;
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0;;
		Material mat-1 {
			1.000000;1.000000;1.000000;1.000000;;
			0;
			0.000000;0.000000;0.000000;;
			0.000000;0.000000;0.000000;;
		}
	}
}

Mesh mesh2 {
	15;
	-2559.343018;-0.462269;-847.135620;,
	-2559.343018;210.189148;-847.135620;,
	-2610.326416;141.479019;-792.389099;,
	-2610.326416;125.439110;-792.389099;,
	-2559.343018;104.863441;-847.135620;,
	-2610.278320;210.189148;-792.440979;,
	-2610.278320;157.526291;-792.440979;,
	-2635.745850;210.189148;-765.093689;,
	-2635.745850;157.526291;-765.093689;,
	-2588.258301;125.416130;-816.086121;,
	-2588.047607;75.229439;-816.312256;,
	-2610.326416;75.229439;-792.389099;,
	-2610.326416;-0.462269;-792.389099;,
	-2661.116699;210.189148;-737.850159;,
	-2661.213379;141.316162;-737.746399;;

	14;
	4;5;6;8;7;,
	3;10;12;11;,
	3;8;14;13;,
	3;13;7;8;,
	3;8;2;14;,
	3;4;10;9;,
	3;3;2;9;,
	3;10;4;0;,
	3;0;12;10;,
	3;1;4;9;,
	3;6;9;2;,
	3;9;6;5;,
	3;9;5;1;,
	3;2;8;6;;

	MeshNormals {
		15;
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;,
		-0.731810;-0.000000;-0.681509;;

		14;
		4;5;6;8;7;,
		3;10;12;11;,
		3;8;14;13;,
		3;13;7;8;,
		3;8;2;14;,
		3;4;10;9;,
		3;3;2;9;,
		3;10;4;0;,
		3;0;12;10;,
		3;1;4;9;,
		3;6;9;2;,
		3;9;6;5;,
		3;9;5;1;,
		3;2;8;6;;
	}

	MeshTextureCoords  {
		15;
		1.000000;1.000000;,
		1.000000;0.000000;,
		0.499526;0.326179;,
		0.499526;0.402324;,
		1.000000;0.500000;,
		0.500000;0.000000;,
		0.500000;0.250000;,
		0.250000;0.000000;,
		0.250000;0.250000;,
		0.716156;0.402433;,
		0.718223;0.640678;,
		0.499526;0.640678;,
		0.499526;1.000000;,
		0.000949;0.000000;,
		0.000000;0.326952;;

	}

	MeshMaterialList {
		1;
		14;
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0;;
		Material mat-1 {
			1.000000;1.000000;1.000000;1.000000;;
			0;
			0.000000;0.000000;0.000000;;
			0.000000;0.000000;0.000000;;
		}
	}
}

Mesh mesh3 {
	35;
	-2639.524902;-0.374619;-820.003418;,
	-2610.326416;141.479019;-792.389099;,
	-2628.540771;141.479019;-809.351440;,
	-2646.755127;141.479019;-826.313782;,
	-2664.969482;141.479019;-843.276062;,
	-2664.971191;125.590477;-843.325073;,
	-2678.794189;125.643242;-856.197876;,
	-2692.617188;125.695999;-869.070618;,
	-2692.553955;100.833778;-869.085754;,
	-2692.490479;75.971550;-869.100830;,
	-2678.733643;75.930550;-856.289551;,
	-2664.976563;75.889549;-843.478271;,
	-2664.965820;92.086227;-843.419983;,
	-2653.069824;92.039284;-832.341858;,
	-2641.174072;91.992340;-821.263733;,
	-2641.063721;67.142319;-821.235046;,
	-2640.953369;42.292301;-821.206360;,
	-2652.914795;42.327953;-832.345642;,
	-2664.876465;42.363602;-843.484985;,
	-2664.878906;21.032276;-843.550720;,
	-2664.881104;-0.299050;-843.616455;,
	-2610.342041;-0.461594;-792.826660;,
	-2610.339355;24.768856;-792.748901;,
	-2610.336670;49.999306;-792.671082;,
	-2610.333740;75.229759;-792.593323;,
	-2598.372070;75.194107;-781.454041;,
	-2586.410645;75.158455;-770.314697;,
	-2586.520996;100.252022;-770.342651;,
	-2586.631348;125.345581;-770.370605;,
	-2598.479736;125.392387;-781.404602;,
	-2610.328369;125.439186;-792.438538;,
	-2666.066406;106.159981;-844.402954;,
	-2639.513428;106.080841;-819.675232;,
	-2612.960205;106.001709;-794.947571;,
	-2639.517090;70.595688;-819.784607;;

	37;
	3;11;10;12;,
	3;10;9;8;,
	3;17;19;18;,
	3;0;19;17;,
	3;0;20;19;,
	3;6;31;8;,
	3;12;8;31;,
	3;8;7;6;,
	3;6;5;31;,
	3;5;32;31;,
	3;4;3;5;,
	3;5;3;32;,
	3;31;32;13;,
	3;12;31;13;,
	3;12;10;8;,
	3;32;14;13;,
	3;16;15;23;,
	3;17;16;0;,
	3;33;24;32;,
	3;15;34;23;,
	3;22;0;16;,
	3;0;22;21;,
	3;33;25;24;,
	3;34;24;23;,
	3;16;23;22;,
	3;34;32;24;,
	3;2;33;32;,
	3;14;32;34;,
	3;1;30;2;,
	3;33;2;30;,
	3;30;29;33;,
	3;3;2;32;,
	3;33;29;27;,
	3;27;29;28;,
	3;33;27;25;,
	3;25;27;26;,
	3;34;15;14;;

	MeshNormals {
		35;
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;,
		0.681507;0.002181;-0.731808;;

		37;
		3;11;10;12;,
		3;10;9;8;,
		3;17;19;18;,
		3;0;19;17;,
		3;0;20;19;,
		3;6;31;8;,
		3;12;8;31;,
		3;8;7;6;,
		3;6;5;31;,
		3;5;32;31;,
		3;4;3;5;,
		3;5;3;32;,
		3;31;32;13;,
		3;12;31;13;,
		3;12;10;8;,
		3;32;14;13;,
		3;16;15;23;,
		3;17;16;0;,
		3;33;24;32;,
		3;15;34;23;,
		3;22;0;16;,
		3;0;22;21;,
		3;33;25;24;,
		3;34;24;23;,
		3;16;23;22;,
		3;34;32;24;,
		3;2;33;32;,
		3;14;32;34;,
		3;1;30;2;,
		3;33;2;30;,
		3;30;29;33;,
		3;3;2;32;,
		3;33;29;27;,
		3;27;29;28;,
		3;33;27;25;,
		3;25;27;26;,
		3;34;15;14;;
	}

	MeshTextureCoords  {
		35;
		0.500000;1.000000;,
		0.774760;0.000000;,
		0.603271;0.000382;,
		0.431781;0.000765;,
		0.260292;0.001147;,
		0.260292;0.113085;,
		0.130146;0.113004;,
		0.000000;0.112922;,
		0.000622;0.288080;,
		0.001244;0.463238;,
		0.130768;0.463238;,
		0.260292;0.463238;,
		0.260376;0.349129;,
		0.372378;0.349210;,
		0.484379;0.349291;,
		0.485444;0.524362;,
		0.486509;0.699433;,
		0.373889;0.699433;,
		0.261269;0.699433;,
		0.261269;0.849717;,
		0.261269;1.000000;,
		0.774760;1.000000;,
		0.774760;0.822246;,
		0.774760;0.644493;,
		0.774760;0.466739;,
		0.887380;0.466739;,
		1.000000;0.466739;,
		0.998935;0.289953;,
		0.997871;0.113166;,
		0.886315;0.113085;,
		0.774760;0.113004;,
		0.250000;0.250000;,
		0.500000;0.250000;,
		0.750000;0.250000;,
		0.500000;0.500000;;

	}

	MeshMaterialList {
		1;
		37;
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0;;
		Material mat-1 {
			1.000000;1.000000;1.000000;1.000000;;
			0;
			0.000000;0.000000;0.000000;;
			0.000000;0.000000;0.000000;;
		}
	}
}

