# Links every skill in this knowledge base into the home skill folders (Windows).
# Uses directory junctions, which need no admin rights. Safe to re-run.
$ErrorActionPreference = "Stop"
$Here = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsRoot = Resolve-Path (Join-Path $Here "..")            # <kb>\.agents\skills
$KB = Resolve-Path (Join-Path $SkillsRoot "..\..")            # <kb>
Write-Host "knowledge base: $KB"

# Pin: clear 'unpinned', set 'pinned' so OneDrive keeps every file on disk.
attrib -U +P /S /D "$KB\*" | Out-Null
Write-Host "pinned  $KB (always keep on this device)"

$homes = @("$HOME\.claude\skills", "$HOME\.agents\skills", "$HOME\.codex\skills")
Get-ChildItem -Directory $SkillsRoot | ForEach-Object {
  $name = $_.Name
  $src = $_.FullName
  foreach ($dir in $homes) {
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
    $target = Join-Path $dir $name
    if (Test-Path $target) {
      $item = Get-Item $target -Force
      if ($item.Attributes -band [IO.FileAttributes]::ReparsePoint) {
        Remove-Item $target -Force
      } else {
        Write-Host "skipped $target : a real directory is already there"; continue
      }
    }
    New-Item -ItemType Junction -Path $target -Target $src | Out-Null
    Write-Host "linked  $target"
  }
}
Write-Host ""
Write-Host "Done. Restart Claude Code (and Codex) so they pick up the new skills."
