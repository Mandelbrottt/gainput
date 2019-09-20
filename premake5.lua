project "Gainput"
	kind "StaticLib"
	language "C++"
	staticruntime "on"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"lib/**.h",
		"lib/**.cpp"
	}

	includedirs {
		"lib/include/",
		"lib/source/",
	}

	disablewarnings {
		"4267"
	}
	
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
		staticruntime "On"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:not Debug"
		runtime "Release"
		optimize "on"
