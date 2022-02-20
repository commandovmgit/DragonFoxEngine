workspace "DragonFoxEngine"
    architecture "x64"

    configurations {
        "Debug",
        "Release"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}"

project "DragonFoxEngine"
    location "DragonFoxEngine"
    language "c++"
    cppdialect "C++17"
    kind "StaticLib"
    staticruntime "on"

    files{
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs{
        "%{prj.name}/src/"
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS"
    }

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    filter "configurations:Debug"
        defines "DRG_Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "DRG_Release"
        runtime "Release"
        optimize "on"




project "Test_lair"
    location "Test_lair"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"

    staticruntime "on"

    files{
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS"
    }

    includedirs
    {
        "DragonFoxEngine/src"
    }


    links
    {
        "DragonFoxEngine"
    }

    
    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    filter "configurations:Debug"
        defines "DRG_Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "DRG_Release"
        runtime "Release"
        optimize "on"
