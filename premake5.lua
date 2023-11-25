project "imgui"
	kind "StaticLib"
	language "C++"
	warnings "off"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin/obj/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",

    "backend/imgui_impl_glfw.h",
    "backend/imgui_impl_glfw.cpp",
    "backend/imgui_impl_opengl3.h",
    "backend/imgui_impl_opengl3.cpp",
    "backend/imgui_impl_opengl3_loader.h"
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
