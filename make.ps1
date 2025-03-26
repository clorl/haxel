$haxePath = "./env/haxe/haxe.exe"

function Help {
  Write-Host("Usage: make.ps1 <target> where target is a filename in targets/<foo>.hxml")
}

$target = $args[0]
if ($args.Count -eq 0) {
  $target = "../project"
}

if ($target -eq "help") {
  Help
  exit 0
}

& "$haxePath" "targets/$target.hxml"
