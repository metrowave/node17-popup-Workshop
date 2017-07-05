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
	10;
	-473.017181;170.424759;-758.548523;,
	-447.481567;107.936203;-785.783752;,
	-422.042969;107.936203;-812.915527;,
	-422.042969;147.365051;-812.915527;,
	-447.481567;147.365051;-785.783752;,
	-447.481567;170.424759;-785.783752;,
	-473.017181;147.365051;-758.548523;,
	-473.017181;107.761909;-758.548523;,
	-473.017181;81.420303;-758.548523;,
	-447.481567;81.415215;-785.783752;;

	4;
	4;4;3;2;1;,
	4;9;8;7;1;,
	4;1;7;6;4;,
	4;5;4;6;0;;

	MeshNormals {
		10;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		4;
		4;4;3;2;1;,
		4;9;8;7;1;,
		4;1;7;6;4;,
		4;5;4;6;0;;
	}

	MeshTextureCoords  {
		10;
		1.000000;1.000000;,
		0.499049;0.297957;,
		0.000000;0.297957;,
		0.000000;0.740930;,
		0.499049;0.740930;,
		0.499049;1.000000;,
		1.000000;0.740930;,
		1.000000;0.295999;,
		1.000000;0.000057;,
		0.499049;0.000000;;

	}

	MeshMaterialList {
		1;
		4;
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
	7;
	-447.481567;45.099056;-785.783752;,
	-447.481567;2.436204;-785.783752;,
	-473.017181;45.099056;-758.548523;,
	-473.017181;2.436204;-758.548523;,
	-460.249390;45.099056;-772.166138;,
	-473.017181;23.767632;-758.548523;,
	-447.481567;23.767632;-785.783752;;

	4;
	3;4;0;6;,
	4;1;3;5;6;,
	3;5;2;4;,
	3;4;6;5;;

	MeshNormals {
		7;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		4;
		3;4;0;6;,
		4;1;3;5;6;,
		3;5;2;4;,
		3;4;6;5;;
	}

	MeshTextureCoords  {
		7;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.000000;,
		0.500000;1.000000;,
		1.000000;0.500000;,
		0.000000;0.500000;;

	}

	MeshMaterialList {
		1;
		4;
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
	7;
	-473.014862;107.761887;-758.476257;,
	-473.017181;2.436204;-758.548523;,
	-496.532471;107.777550;-780.526245;,
	-496.534790;2.451863;-780.598511;,
	-496.533630;55.114704;-780.562378;,
	-473.016235;45.099049;-758.519226;,
	-473.015442;81.420280;-758.494324;;

	4;
	3;2;0;6;,
	3;4;6;5;,
	4;4;5;1;3;,
	3;2;6;4;;

	MeshNormals {
		7;
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;;

		4;
		3;2;0;6;,
		3;4;6;5;,
		4;4;5;1;3;,
		3;2;6;4;;
	}

	MeshTextureCoords  {
		7;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.000000;,
		1.000000;0.500000;,
		0.000000;0.405056;,
		0.000000;0.749903;;

	}

	MeshMaterialList {
		1;
		4;
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
	6;
	-473.013977;147.365005;-758.449036;,
	-496.530151;213.103226;-780.453918;,
	-496.531586;147.380676;-780.499023;,
	-496.530884;180.241943;-780.476440;,
	-473.013489;170.424728;-758.433228;,
	-473.087189;213.087616;-758.473877;;

	3;
	4;0;2;3;4;,
	3;5;4;3;,
	3;5;3;1;;

	MeshNormals {
		6;
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;,
		0.683978;0.000486;-0.729502;;

		3;
		4;0;2;3;4;,
		3;5;4;3;,
		3;5;3;1;;
	}

	MeshTextureCoords  {
		6;
		0.000000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.000000;,
		1.000000;0.500000;,
		0.000000;0.350865;,
		0.003174;1.000000;;

	}

	MeshMaterialList {
		1;
		3;
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

Mesh mesh4 {
	8;
	-525.648376;213.082550;-749.397644;,
	-525.653015;2.431185;-749.542236;,
	-496.531586;147.380676;-780.499023;,
	-496.530151;213.103226;-780.453918;,
	-496.534790;2.451863;-780.598511;,
	-496.532471;107.777550;-780.526245;,
	-474.482483;107.793205;-804.043823;,
	-474.481598;147.396332;-804.016663;;

	4;
	4;2;7;6;5;,
	3;2;0;3;,
	4;0;5;4;1;,
	3;2;5;0;;

	MeshNormals {
		8;
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;,
		-0.729503;0.000486;-0.683978;;

		4;
		4;2;7;6;5;,
		3;2;0;3;,
		4;0;5;4;1;,
		3;2;5;0;;
	}

	MeshTextureCoords  {
		8;
		1.000000;1.000000;,
		1.000000;0.000000;,
		0.430931;0.688003;,
		0.430931;1.000000;,
		0.430931;0.000000;,
		0.430931;0.500000;,
		0.000000;0.500000;,
		0.000000;0.688003;;

	}

	MeshMaterialList {
		1;
		4;
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

Mesh mesh5 {
	10;
	-420.349792;107.936203;-760.345154;,
	-420.349792;2.436204;-760.345154;,
	-447.481567;45.099056;-785.783752;,
	-447.481567;2.436204;-785.783752;,
	-420.349792;45.099056;-760.345154;,
	-420.349792;81.410141;-760.345154;,
	-447.481567;107.936203;-785.783752;,
	-447.481567;81.415215;-785.783752;,
	-474.716797;81.420303;-811.319397;,
	-474.716797;45.099056;-811.319397;;

	4;
	4;5;7;6;0;,
	4;4;2;7;5;,
	4;1;3;2;4;,
	4;8;7;2;9;;

	MeshNormals {
		10;
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;;

		4;
		4;5;7;6;0;,
		4;4;2;7;5;,
		4;1;3;2;4;,
		4;8;7;2;9;;
	}

	MeshTextureCoords  {
		10;
		0.000000;1.000000;,
		0.000000;0.000000;,
		0.499049;0.404387;,
		0.499049;0.000000;,
		0.000000;0.404387;,
		0.000000;0.748568;,
		0.499049;1.000000;,
		0.499049;0.748616;,
		1.000000;0.748664;,
		1.000000;0.404387;;

	}

	MeshMaterialList {
		1;
		4;
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

Mesh mesh6 {
	8;
	-420.349792;213.087616;-760.345154;,
	-420.349792;147.365051;-760.345154;,
	-474.791443;213.087616;-811.389343;,
	-474.716797;170.424759;-811.319397;,
	-447.481567;170.424759;-785.783752;,
	-447.481567;147.365051;-785.783752;,
	-447.570618;213.087616;-785.867249;,
	-420.349792;170.424759;-760.345154;;

	3;
	4;7;1;5;4;,
	4;4;6;0;7;,
	4;6;4;3;2;;

	MeshNormals {
		8;
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;;

		3;
		4;7;1;5;4;,
		4;4;6;0;7;,
		4;6;4;3;2;;
	}

	MeshTextureCoords  {
		8;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		0.998629;0.350865;,
		0.498364;0.350865;,
		0.498364;0.000000;,
		0.500000;1.000000;,
		0.000000;0.350865;;

	}

	MeshMaterialList {
		1;
		3;
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

Mesh mesh7 {
	10;
	-420.349792;170.424759;-760.345154;,
	-394.717194;147.365051;-787.683838;,
	-394.717194;170.424759;-787.683838;,
	-420.349792;147.365051;-760.345154;,
	-420.349792;107.936203;-760.345154;,
	-420.349792;81.410141;-760.345154;,
	-394.717194;81.405029;-787.683838;,
	-394.717194;107.761909;-787.683838;,
	-369.181580;107.761909;-814.919067;,
	-369.181580;147.365051;-814.919067;;

	5;
	4;7;1;9;8;,
	3;1;7;4;,
	4;3;0;2;1;,
	3;3;1;4;,
	4;6;5;4;7;;

	MeshNormals {
		10;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		5;
		4;7;1;9;8;,
		3;1;7;4;,
		4;3;0;2;1;,
		3;3;1;4;,
		4;6;5;4;7;;
	}

	MeshTextureCoords  {
		10;
		1.000000;1.000000;,
		0.499052;0.740959;,
		0.499052;1.000000;,
		1.000000;0.740959;,
		1.000000;0.298037;,
		1.000000;0.000057;,
		0.499052;0.000000;,
		0.499052;0.296079;,
		0.000000;0.296079;,
		0.000000;0.740959;;

	}

	MeshMaterialList {
		1;
		5;
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

Mesh mesh8 {
	7;
	-394.717194;2.436204;-787.683838;,
	-420.349792;45.099056;-760.345154;,
	-420.349792;2.436204;-760.345154;,
	-394.717194;45.099056;-787.683838;,
	-407.533508;45.099056;-774.014465;,
	-420.349792;23.767632;-760.345154;,
	-394.717194;23.767632;-787.683838;;

	4;
	3;4;3;6;,
	4;0;2;5;6;,
	3;5;1;4;,
	3;4;6;5;;

	MeshNormals {
		7;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		4;
		3;4;3;6;,
		4;0;2;5;6;,
		3;5;1;4;,
		3;4;6;5;;
	}

	MeshTextureCoords  {
		7;
		0.000000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.000000;,
		0.000000;1.000000;,
		0.500000;1.000000;,
		1.000000;0.500000;,
		0.000000;0.500000;;

	}

	MeshMaterialList {
		1;
		4;
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

Mesh mesh9 {
	10;
	-367.481964;2.436204;-762.148193;,
	-394.717194;81.405029;-787.683838;,
	-422.055878;81.410141;-813.316406;,
	-422.055878;45.099056;-813.316406;,
	-394.717194;45.099056;-787.683838;,
	-394.717194;2.436204;-787.683838;,
	-367.481964;45.099056;-762.148193;,
	-367.481964;81.399940;-762.148193;,
	-367.481964;107.761909;-762.148193;,
	-394.717194;107.761909;-787.683838;;

	4;
	4;6;4;1;7;,
	4;5;4;6;0;,
	4;7;1;9;8;,
	4;4;3;2;1;;

	MeshNormals {
		10;
		0.683978;0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;;

		4;
		4;6;4;1;7;,
		4;5;4;6;0;,
		4;7;1;9;8;,
		4;4;3;2;1;;
	}

	MeshTextureCoords  {
		10;
		0.000000;0.000000;,
		0.499052;0.749758;,
		1.000000;0.749807;,
		1.000000;0.405056;,
		0.499052;0.405056;,
		0.499052;0.000000;,
		0.000000;0.405056;,
		0.000000;0.749710;,
		0.000000;1.000000;,
		0.499052;1.000000;;

	}

	MeshMaterialList {
		1;
		4;
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

Mesh mesh10 {
	8;
	-367.481964;213.087616;-762.148193;,
	-367.481964;147.365051;-762.148193;,
	-422.055878;213.087616;-813.316406;,
	-394.717194;147.365051;-787.683838;,
	-367.481964;170.424759;-762.148193;,
	-394.768921;213.087616;-787.732300;,
	-422.055878;170.424759;-813.316406;,
	-394.717194;170.424759;-787.683838;;

	3;
	4;4;1;3;7;,
	4;7;5;0;4;,
	4;5;7;6;2;;

	MeshNormals {
		8;
		0.683978;0.000000;-0.729502;,
		0.683978;0.000000;-0.729502;,
		0.683978;0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;,
		0.683978;-0.000000;-0.729502;;

		3;
		4;4;1;3;7;,
		4;7;5;0;4;,
		4;5;7;6;2;;
	}

	MeshTextureCoords  {
		8;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		0.499052;0.000000;,
		0.000000;0.350865;,
		0.500000;1.000000;,
		1.000000;0.350865;,
		0.499052;0.350865;;

	}

	MeshMaterialList {
		1;
		3;
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

Mesh mesh11 {
	7;
	-345.005310;45.099056;-786.120850;,
	-345.005310;2.436204;-786.120850;,
	-367.481964;45.099056;-762.148193;,
	-356.243652;45.099056;-774.134521;,
	-367.481964;23.767632;-762.148193;,
	-367.481964;2.436204;-762.148193;,
	-345.005310;23.767632;-786.120850;;

	4;
	3;3;0;6;,
	4;1;5;4;6;,
	3;4;2;3;,
	3;3;6;4;;

	MeshNormals {
		7;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		4;
		3;3;0;6;,
		4;1;5;4;6;,
		3;4;2;3;,
		3;3;6;4;;
	}

	MeshTextureCoords  {
		7;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		0.500000;1.000000;,
		1.000000;0.500000;,
		1.000000;0.000000;,
		0.000000;0.500000;;

	}

	MeshMaterialList {
		1;
		4;
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

Mesh mesh12 {
	7;
	-345.275635;170.424759;-785.832581;,
	-345.275635;81.395508;-785.832581;,
	-367.481964;170.424759;-762.148193;,
	-367.481964;147.365051;-762.148193;,
	-367.481964;107.761909;-762.148193;,
	-367.481964;81.399940;-762.148193;,
	-345.275635;125.910141;-785.832581;;

	3;
	4;6;3;2;0;,
	4;1;5;4;6;,
	3;6;4;3;;

	MeshNormals {
		7;
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;,
		-0.729502;-0.000000;-0.683978;;

		3;
		4;6;3;2;0;,
		4;1;5;4;6;,
		3;6;4;3;;
	}

	MeshTextureCoords  {
		7;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		1.000000;0.740987;,
		1.000000;0.296154;,
		1.000000;0.000050;,
		0.000000;0.500000;;

	}

	MeshMaterialList {
		1;
		3;
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

Mesh mesh13 {
	12;
	-314.588348;212.988434;-756.923035;,
	-314.610931;2.338182;-757.623535;,
	-368.955475;213.163773;-807.896851;,
	-345.275635;170.424759;-785.832581;,
	-345.285156;81.396004;-786.128601;,
	-368.969574;81.476814;-808.334778;,
	-314.599640;107.663307;-757.273315;,
	-341.771912;213.076096;-782.409912;,
	-368.973480;45.176136;-808.455444;,
	-345.000732;45.098824;-785.979004;,
	-345.005310;2.436204;-786.120850;,
	-368.960052;170.501144;-808.038696;;

	8;
	4;6;4;3;0;,
	3;4;6;9;,
	3;10;9;1;,
	3;6;1;9;,
	3;7;0;3;,
	4;11;2;7;3;,
	3;8;5;4;,
	3;9;8;4;;

	MeshNormals {
		12;
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;,
		0.683976;0.002353;-0.729500;;

		8;
		4;6;4;3;0;,
		3;4;6;9;,
		3;10;9;1;,
		3;6;1;9;,
		3;7;0;3;,
		4;11;2;7;3;,
		3;8;5;4;,
		3;9;8;4;;
	}

	MeshTextureCoords  {
		12;
		0.000000;1.000000;,
		0.000000;0.000000;,
		1.000000;1.000000;,
		0.564361;0.797472;,
		0.564361;0.374834;,
		1.000000;0.374855;,
		0.000000;0.500000;,
		0.500000;1.000000;,
		1.000000;0.202528;,
		0.559058;0.202528;,
		0.559058;0.000000;,
		1.000000;0.797472;;

	}

	MeshMaterialList {
		1;
		8;
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

