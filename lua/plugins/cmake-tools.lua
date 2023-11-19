return {
	"Civitasv/cmake-tools.nvim",
	opts = {
		cmake_regenerate_on_save = true,
		cmake_soft_link_compile_commands = true,
		cmake_compile_commands_from_lsp = false,

		cmake_kits_path = function()
			local osName = os.getenv("OS")
			local currentUser = os.getenv("USER") or os.getenv("USERNAME")
			if osName and osName:match("Windows") then
				return "C:/Users/" .. currentUser .. "/AppData/Local/CmakeTools/cmake-tools-kits.json"
			end
		end,

		cmake_generate_options = {
			"-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
			"-DCMAKE_TOOLCHAIN_FILE=C:/Users/wzabi/scoop/apps/vcpkg/current/scripts/buildsystems/vcpkg.cmake",
		},
		cmake_build_directory = "build-${variant:buildType}",
	},
	event = "LazyFile",
}
