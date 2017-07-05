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
	32;
	-2352.391113;0.434105;40.055531;,
	-2352.391113;211.085526;40.055531;,
	-2326.504395;0.434105;13.094376;,
	-2326.504395;211.085526;13.094376;,
	-2300.617676;0.434105;-13.866781;,
	-2300.617676;53.096958;-13.866781;,
	-2300.617676;158.422668;-13.866781;,
	-2300.617676;211.085526;-13.866781;,
	-2274.731201;0.434105;-40.827938;,
	-2274.731201;53.096958;-40.827938;,
	-2274.731201;105.759811;-40.827938;,
	-2274.731201;158.422668;-40.827938;,
	-2274.731201;211.085526;-40.827938;,
	-2378.277588;23.605213;67.016685;,
	-2378.159180;0.434105;66.893234;,
	-2378.258789;211.085526;66.997040;,
	-2378.258789;188.247574;66.997040;,
	-2352.401855;181.499939;40.066750;,
	-2338.609863;171.573303;25.702326;,
	-2326.543457;157.738220;13.134941;,
	-2326.543457;181.862534;13.134941;,
	-2317.226318;165.789154;3.431087;,
	-2310.152100;147.005280;-3.936702;,
	-2305.814941;126.561554;-8.453872;,
	-2304.388672;105.702858;-9.939491;,
	-2305.814941;84.844154;-8.453872;,
	-2310.152100;64.400429;-3.936702;,
	-2317.226318;45.616554;3.431087;,
	-2326.543457;29.543171;13.134941;,
	-2326.543457;54.108627;13.134941;,
	-2338.614746;40.275040;25.707293;,
	-2352.420654;30.352837;40.086395;;

	30;
	4;9;8;4;5;,
	4;12;11;6;7;,
	3;0;13;31;,
	3;14;13;0;,
	3;30;2;0;,
	3;29;28;30;,
	3;2;30;28;,
	3;31;30;0;,
	3;1;17;16;,
	3;16;15;1;,
	3;1;18;17;,
	3;3;18;1;,
	3;19;18;20;,
	3;20;18;3;,
	3;28;4;2;,
	3;5;27;26;,
	3;5;26;25;,
	3;6;10;5;,
	3;5;10;9;,
	3;5;25;24;,
	3;4;27;5;,
	3;4;28;27;,
	3;6;23;22;,
	3;7;20;3;,
	3;7;21;20;,
	3;6;22;21;,
	3;11;10;6;,
	3;6;24;23;,
	3;21;7;6;,
	3;24;6;5;;

	MeshNormals {
		32;
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;;

		30;
		4;9;8;4;5;,
		4;12;11;6;7;,
		3;0;13;31;,
		3;14;13;0;,
		3;30;2;0;,
		3;29;28;30;,
		3;2;30;28;,
		3;31;30;0;,
		3;1;17;16;,
		3;16;15;1;,
		3;1;18;17;,
		3;3;18;1;,
		3;19;18;20;,
		3;20;18;3;,
		3;28;4;2;,
		3;5;27;26;,
		3;5;26;25;,
		3;6;10;5;,
		3;5;10;9;,
		3;5;25;24;,
		3;4;27;5;,
		3;4;28;27;,
		3;6;23;22;,
		3;7;20;3;,
		3;7;21;20;,
		3;6;22;21;,
		3;11;10;6;,
		3;6;24;23;,
		3;21;7;6;,
		3;24;6;5;;
	}

	MeshTextureCoords  {
		32;
		0.250000;1.000000;,
		0.250000;0.000000;,
		0.500000;1.000000;,
		0.500000;0.000000;,
		0.750000;1.000000;,
		0.750000;0.750000;,
		0.750000;0.250000;,
		0.750000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.750000;,
		1.000000;0.500000;,
		1.000000;0.250000;,
		1.000000;0.000000;,
		0.000000;0.890003;,
		0.001145;1.000000;,
		0.000182;0.000000;,
		0.000182;0.108416;,
		0.249896;0.140448;,
		0.383092;0.187572;,
		0.499624;0.253249;,
		0.499624;0.138727;,
		0.589604;0.215030;,
		0.657922;0.304200;,
		0.699808;0.401250;,
		0.713584;0.500270;,
		0.699808;0.599290;,
		0.657922;0.696340;,
		0.589604;0.785511;,
		0.499624;0.861814;,
		0.499624;0.745197;,
		0.383045;0.810868;,
		0.249714;0.857970;;

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

Mesh mesh1 {
	32;
	-2485.880371;0.536128;-36.534683;,
	-2485.879395;53.198959;-36.483810;,
	-2485.878174;105.861786;-36.432941;,
	-2485.877197;158.524612;-36.382069;,
	-2485.876221;211.187439;-36.331200;,
	-2458.949951;0.510622;-10.677703;,
	-2458.948975;53.173450;-10.626833;,
	-2458.947021;158.499115;-10.525092;,
	-2458.945801;211.161942;-10.474221;,
	-2432.019775;0.485116;15.179275;,
	-2432.015625;211.136429;15.382757;,
	-2405.089355;0.459610;41.036255;,
	-2405.085205;211.110931;41.239735;,
	-2378.159180;0.434105;66.893234;,
	-2378.282227;23.605318;66.797073;,
	-2405.212402;30.378447;40.946617;,
	-2419.559570;40.314236;27.180548;,
	-2432.121094;54.159710;15.132905;,
	-2432.121338;29.594265;15.109176;,
	-2441.824951;45.676830;5.807598;,
	-2449.192383;64.467674;-1.248401;,
	-2453.709229;84.915672;-5.565790;,
	-2455.194336;105.775764;-6.972051;,
	-2453.708252;126.633049;-5.525492;,
	-2449.190918;147.072495;-1.168608;,
	-2441.822754;165.849380;5.923681;,
	-2432.118408;181.913559;15.256311;,
	-2432.118896;157.789246;15.233007;,
	-2419.552002;171.612427;27.312145;,
	-2405.189697;181.525467;41.111485;,
	-2378.259277;188.247574;66.974983;,
	-2378.258789;211.085526;66.997040;;

	30;
	4;6;5;0;1;,
	4;8;7;3;4;,
	3;19;5;6;,
	3;6;22;21;,
	3;5;19;18;,
	3;6;21;20;,
	3;6;20;19;,
	3;18;9;5;,
	3;1;2;6;,
	3;3;7;2;,
	3;25;7;8;,
	3;2;7;6;,
	3;6;7;22;,
	3;7;25;24;,
	3;7;24;23;,
	3;22;7;23;,
	3;26;25;8;,
	3;17;16;18;,
	3;9;18;16;,
	3;11;9;16;,
	3;14;13;11;,
	3;11;15;14;,
	3;16;15;11;,
	3;26;28;27;,
	3;8;10;26;,
	3;28;26;10;,
	3;10;12;28;,
	3;12;30;29;,
	3;30;12;31;,
	3;28;12;29;;

	MeshNormals {
		32;
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;,
		0.692586;0.000683;-0.721335;;

		30;
		4;6;5;0;1;,
		4;8;7;3;4;,
		3;19;5;6;,
		3;6;22;21;,
		3;5;19;18;,
		3;6;21;20;,
		3;6;20;19;,
		3;18;9;5;,
		3;1;2;6;,
		3;3;7;2;,
		3;25;7;8;,
		3;2;7;6;,
		3;6;7;22;,
		3;7;25;24;,
		3;7;24;23;,
		3;22;7;23;,
		3;26;25;8;,
		3;17;16;18;,
		3;9;18;16;,
		3;11;9;16;,
		3;14;13;11;,
		3;11;15;14;,
		3;16;15;11;,
		3;26;28;27;,
		3;8;10;26;,
		3;28;26;10;,
		3;10;12;28;,
		3;12;30;29;,
		3;30;12;31;,
		3;28;12;29;;
	}

	MeshTextureCoords  {
		32;
		0.000000;1.000000;,
		0.000000;0.750000;,
		0.000000;0.500000;,
		0.000000;0.250000;,
		0.000000;0.000000;,
		0.250000;1.000000;,
		0.250000;0.750000;,
		0.250000;0.250000;,
		0.250000;0.000000;,
		0.500000;1.000000;,
		0.500000;0.000000;,
		0.750000;1.000000;,
		0.750000;0.000000;,
		1.000000;1.000000;,
		0.998854;0.890003;,
		0.748854;0.857970;,
		0.615663;0.810868;,
		0.499050;0.745197;,
		0.499050;0.861814;,
		0.408967;0.785511;,
		0.340570;0.696340;,
		0.298637;0.599290;,
		0.284845;0.500270;,
		0.298637;0.401250;,
		0.340570;0.304200;,
		0.408967;0.215030;,
		0.499050;0.138727;,
		0.499050;0.253249;,
		0.615709;0.187572;,
		0.749036;0.140448;,
		0.999036;0.108416;,
		0.999036;0.000000;;

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
	12;
	-2380.406494;188.298599;-38.626060;,
	-2406.263428;181.550980;-11.695769;,
	-2432.118896;157.789246;15.233007;,
	-2432.118896;181.913574;15.233007;,
	-2448.510254;147.056320;32.304649;,
	-2454.273682;105.753891;38.307442;,
	-2448.510254;64.451462;32.304649;,
	-2432.118896;29.594206;15.233007;,
	-2432.118896;54.159660;15.233007;,
	-2406.282227;30.403873;-11.676121;,
	-2380.425293;23.656248;-38.606415;,
	-2380.415771;105.977425;-38.616238;;

	10;
	3;8;7;6;,
	3;5;8;6;,
	3;4;2;5;,
	3;8;5;2;,
	3;3;2;4;,
	3;2;11;8;,
	3;11;10;9;,
	3;2;1;11;,
	3;11;1;0;,
	3;11;9;8;;

	MeshNormals {
		12;
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;,
		-0.721335;-0.000000;-0.692586;;

		10;
		3;8;7;6;,
		3;5;8;6;,
		3;4;2;5;,
		3;8;5;2;,
		3;3;2;4;,
		3;2;11;8;,
		3;11;10;9;,
		3;2;1;11;,
		3;11;1;0;,
		3;11;9;8;;
	}

	MeshTextureCoords  {
		12;
		1.000000;0.000000;,
		0.656817;0.040984;,
		0.313654;0.185307;,
		0.313654;0.038781;,
		0.096104;0.250496;,
		0.019608;0.501358;,
		0.096104;0.752219;,
		0.313654;0.963934;,
		0.313654;0.814729;,
		0.656567;0.959016;,
		0.999750;1.000000;,
		0.999875;0.500000;;

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

Mesh mesh3 {
	13;
	-2380.425293;23.656248;-38.606415;,
	-2380.406494;188.298599;-38.626060;,
	-2380.412598;133.417816;-38.619511;,
	-2380.418945;78.537033;-38.612965;,
	-2353.495117;30.410049;-12.750997;,
	-2326.543701;54.172016;13.120763;,
	-2326.543457;29.606564;13.126509;,
	-2309.472168;64.467735;29.509615;,
	-2303.469482;105.771538;35.263504;,
	-2309.472412;147.072586;29.490292;,
	-2326.544189;181.925934;13.090878;,
	-2326.544189;157.801605;13.096521;,
	-2353.476074;181.557159;-12.767488;;

	11;
	3;3;4;0;,
	3;5;3;2;,
	3;1;12;2;,
	3;2;12;11;,
	3;4;3;5;,
	3;5;7;6;,
	3;8;7;5;,
	3;9;11;10;,
	3;11;9;8;,
	3;8;5;11;,
	3;2;11;5;;

	MeshNormals {
		13;
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;,
		0.692586;-0.000165;-0.721335;;

		11;
		3;3;4;0;,
		3;5;3;2;,
		3;1;12;2;,
		3;2;12;11;,
		3;4;3;5;,
		3;5;7;6;,
		3;8;7;5;,
		3;9;11;10;,
		3;11;9;8;,
		3;8;5;11;,
		3;2;11;5;;
	}

	MeshTextureCoords  {
		13;
		0.000000;1.000000;,
		0.000250;0.000000;,
		0.000167;0.333333;,
		0.000083;0.666667;,
		0.343083;0.959016;,
		0.686436;0.814729;,
		0.686436;0.963934;,
		0.903924;0.752219;,
		0.980397;0.501358;,
		0.903924;0.250496;,
		0.686436;0.038781;,
		0.686436;0.185307;,
		0.343334;0.040984;;

	}

	MeshMaterialList {
		1;
		11;
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

