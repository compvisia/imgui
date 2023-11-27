project "imgui"
	kind "StaticLib"
	language "C++"
	warnings "off"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin/obj/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"*.h",
		"*.cpp"
	}

    includedirs {
        "."
    }

  filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
