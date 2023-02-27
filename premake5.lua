include "../../premake/common_premake_defines.lua"

project "FreeType"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./src/autofit/autofit.c",
		"./src/base/ftbase.c",
		"./src/base/ftbbox.c",
		"./src/base/ftbdf.c",
		"./src/base/ftbitmap.c",
		"./src/base/ftcid.c",
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
		"./src/base/fttype1.c",
		"./src/base/ftwinfnt.c",
		"./src/bdf/bdf.c",
		"./src/bzip2/ftbzip2.c",
		"./src/cache/ftcache.c",
		"./src/cff/cff.c",
		"./src/cid/type1cid.c",
		"./src/gzip/ftgzip.c",
		"./src/lzw/ftlzw.c",
		"./src/pcf/pcf.c",
		"./src/pfr/pfr.c",
		"./src/psaux/psaux.c",
		"./src/pshinter/pshinter.c",
		"./src/psnames/psnames.c",
		"./src/raster/raster.c",
		"./src/sdf/sdf.c",
		"./src/sfnt/sfnt.c",
		"./src/smooth/smooth.c",
		"./src/svg/svg.c",
		"./src/truetype/truetype.c",
		"./src/type1/type1.c",
		"./src/type42/type42.c",
		"./src/winfonts/winfnt.c"
	}

	includedirs {
		"./src",

		"%{IncludeDir.zlib}",
		"%{IncludeDir.freetype}",
		"%{IncludeDir.harfbuzz}"
	}

	defines {
		"FT2_BUILD_LIBRARY"
	}

	filter "toolset:msc"
		disablewarnings { "4244", "4267" }
		
	filter "system:windows"
		defines { "_CRT_SECURE_NO_WARNINGS", "_CRT_NONSTDC_NO_DEPRECATE" }
		files {
			"./builds/windows/ftdebug.c",
			"./builds/windows/ftsystem.c"
		}
	filter "system:not windows"
		files { 
			"./src/base/ftdebug.c",
			"./builds/unix/ftsystem.c"
		}