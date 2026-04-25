$ErrorActionPreference = "Stop"

$apiJar = Join-Path $PSScriptRoot "lib\burp-extender-api-2.3.jar"
$classesDir = Join-Path $PSScriptRoot "build\classes"
$distDir = Join-Path $PSScriptRoot "dist"
$jarPath = Join-Path $distDir "xia-sql-ui.jar"
$rootJarPath = Join-Path $PSScriptRoot "xia-sql-ui.jar"

if (-not (Test-Path -LiteralPath $apiJar)) {
    throw "Missing Burp Extender API jar: $apiJar"
}

New-Item -ItemType Directory -Force -Path $classesDir | Out-Null
New-Item -ItemType Directory -Force -Path $distDir | Out-Null

javac --release 8 -encoding UTF-8 -cp $apiJar -d $classesDir (Join-Path $PSScriptRoot "BurpExtender.java")
jar cf $jarPath -C $classesDir .
Copy-Item -LiteralPath $jarPath -Destination $rootJarPath -Force

Write-Host "Built $jarPath"
Write-Host "Copied $rootJarPath"
