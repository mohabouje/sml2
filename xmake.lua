set_project("sml2")
set_version("2.0.0", {build = "%Y%m%d%H%M"})
set_languages("cxx23")
set_warnings("all", "error")

add_rules("mode.debug",
          "mode.release",
          "mode.releasedbg",
          "mode.coverage",
          "mode.profile",
          "mode.check",
          "mode.valgrind",
          "mode.asan",
          "mode.tsan",
          "mode.ubsan",
          "mode.lsan")

if is_mode("release") then
    set_optimize("aggressive")
end 

target("sml2")
    set_kind("headeronly")
    add_headerfiles("include/sml2/*.hpp")
    add_includedirs("include", {public = true})
    add_defines("NTEST")
target_end()