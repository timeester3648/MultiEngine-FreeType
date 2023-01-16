include "../../premake/common_premake_defines.lua"

project "FreeType"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	includedirs {
		"./src",

		"%{IncludeDir.zlib}",
		"%{IncludeDir.freetype}",
		"%{IncludeDir.fidelityfx_cacao}",
		"%{IncludeDir.general_includes}"
	}

	defines {
		"FT2_BUILD_LIBRARY",
		"FT_CONFIG_OPTION_SYSTEM_ZLIB"
	}

	filter "toolset:msc"
		disablewarnings { "4244", "4267" }
		
	filter "system:windows"
		defines { "_CRT_SECURE_NO_WARNINGS", "_CRT_NONSTDC_NO_DEPRECATE" }
		files {
			"./src/sdf/sdf.c",
			"./src/svg/svg.c",
			"./src/pfr/pfr.c",
			"./src/bdf/bdf.c",
			"./src/pcf/pcf.c",
			"./src/cff/cff.c",
			"./src/sfnt/sfnt.c",
			"./src/lzw/ftlzw.c",
			"./src/psaux/psaux.c",
			"./src/gzip/ftgzip.c",
			"./src/type1/type1.c",
			"./src/cid/type1cid.c",
			"./src/type42/type42.c",
			"./src/smooth/smooth.c",
			"./src/raster/raster.c",
			"./src/cache/ftcache.c",
			"./src/winfonts/winfnt.c",
			"./src/autofit/autofit.c",
			"./src/psnames/psmodule.c",
			"./src/pshinter/pshinter.c",
			"./src/truetype/truetype.c",

			"./src/base/ftbase.c",
			"./src/base/ftbbox.c",
			"./src/base/ftbitmap.c",
			"./src/base/ftdebug.c",
			"./src/base/ftfstype.c",
			"./src/base/ftgasp.c",
			"./src/base/ftglyph.c",
			"./src/base/ftgxval.c",
			"./src/base/ftinit.c",
			"./src/base/ftmm.c",
			"./src/base/ftotval.c",
			"./src/base/ftpatent.c",
			"./src/base/ftpfr.c",
			"./src/base/ftstroke.c",
			"./src/base/ftsynth.c",
			"./src/base/ftsystem.c",
			"./src/base/fttype1.c",
			"./src/base/ftwinfnt.c"
		}