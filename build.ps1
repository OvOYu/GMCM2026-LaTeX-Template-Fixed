$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
  $stamp = Get-Date -Format 'yyyyMMdd-HHmmss-fff'
  $out = Join-Path 'build' $stamp
  New-Item -ItemType Directory -Path $out | Out-Null
  & latexmk -norc -xelatex -recorder -interaction=nonstopmode -halt-on-error -file-line-error "-outdir=$out" main.tex
  if ($LASTEXITCODE -ne 0) { throw "编译失败；日志和中间文件保留于 $out" }
  Write-Output (Join-Path $PSScriptRoot (Join-Path $out 'main.pdf'))
} finally {
  Pop-Location
}
