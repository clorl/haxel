$HAXE = "./env/haxe/haxe.exe"
$TARGET = "haxe_lsp"
$BUILD_DIR = "./build"
$SRC_DIR = "./src"

# Function to display help
function Show-Help {
    Write-Host "Available targets:"
    Write-Host "  all (default) - Display this help"
    Write-Host "  build         - Compile the source files and run the program"
    Write-Host "  clean         - Remove object files and the executable"
    Write-Host "  run           - Run the program"
}

# Function to build the project
function Build {
    & $HAXE --main Main.hx --cpp "$BUILD_DIR/$TARGET" -p "$SRC_DIR"
    if ($LASTEXITCODE -eq 0) {
        & "$BUILD_DIR/$TARGET"
    } else {
        Write-Host "Build failed."
    }
}

# Function to run the program
function Run {
    & "$BUILD_DIR/$TARGET"
}

# Function to clean the build directory
function Clean {
    Remove-Item -Recurse -Force $BUILD_DIR
    New-Item -ItemType Directory -Path $BUILD_DIR
}

# Check if an argument was provided
if ($args.Count -gt 0) {
    $target = $args[0]  # Use the first argument
} else {
    $target = "help"  # Use the default value
}

switch ($target) {
    "help" { Show-Help }
    "build" { Build }
    "run" { Run }
    "clean" { Clean }
    "version" {}
    default { 
        Write-Host Unrecognized target $args[0].
        Show-Help
    }
}
