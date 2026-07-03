# fleet-pull.ps1
# Git pull across all fleet repos registered in The Nexus.
# Run from any directory: powershell -ExecutionPolicy Bypass -File fleet-pull.ps1

$repos = @(
    # Core control-plane and execution
    "D:\GitHub\agent-os",
    "D:\GitHub\cli-engine",
    "D:\GitHub\studio-fleet",
    "D:\GitHub\fleet-ops",
    "D:\GitHub\project-cerberus",

    # Knowledge / skills / discovery
    "D:\GitHub\clihub",
    "D:\GitHub\openclaw-master-skills",
    "D:\GitHub\skills",
    "D:\GitHub\skills-best-practices",
    "D:\GitHub\aso-skills",
    "D:\GitHub\axton-obsidian-visual-skills",
    "D:\GitHub\threejs-skills",

    # Research / R&D
    "D:\GitHub\AI-Scientist",
    "D:\GitHub\autoresearch",
    "D:\GitHub\quorum",

    # Creative / generation vessels
    "D:\GitHub\ComfyUI",
    "D:\GitHub\ComfyUI-OpenClaw",
    "D:\GitHub\mesh2motion-app",

    # Meta-gen pipeline
    "D:\GitHub\meta-gen"
)

$results = @()
$ok = 0
$skipped = 0
$failed = 0

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  FLEET PULL — $(Get-Date -Format 'yyyy-MM-dd HH:mm')" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

foreach ($repo in $repos) {
    $name = Split-Path $repo -Leaf

    if (-not (Test-Path $repo)) {
        Write-Host "  SKIP  $name  (not found at $repo)" -ForegroundColor DarkGray
        $results += [PSCustomObject]@{ Repo=$name; Status="MISSING"; Detail="path not found" }
        $skipped++
        continue
    }

    if (-not (Test-Path "$repo\.git")) {
        Write-Host "  SKIP  $name  (not a git repo)" -ForegroundColor DarkGray
        $results += [PSCustomObject]@{ Repo=$name; Status="NOT_GIT"; Detail="no .git folder" }
        $skipped++
        continue
    }

    Write-Host -NoNewline "  PULL  $name ... "
    $output = git -C $repo pull 2>&1
    $exitCode = $LASTEXITCODE

    if ($exitCode -eq 0) {
        $summary = ($output | Select-Object -Last 1).ToString().Trim()
        Write-Host $summary -ForegroundColor Green
        $results += [PSCustomObject]@{ Repo=$name; Status="OK"; Detail=$summary }
        $ok++
    } else {
        $errMsg = ($output | Select-Object -Last 1).ToString().Trim()
        Write-Host "FAILED  $errMsg" -ForegroundColor Red
        $results += [PSCustomObject]@{ Repo=$name; Status="FAIL"; Detail=$errMsg }
        $failed++
    }
}

Write-Host ""
Write-Host "----------------------------------------" -ForegroundColor Cyan
Write-Host "  OK: $ok   SKIPPED: $skipped   FAILED: $failed" -ForegroundColor Cyan
Write-Host "----------------------------------------" -ForegroundColor Cyan
Write-Host ""

if ($failed -gt 0) {
    Write-Host "Failed repos:" -ForegroundColor Red
    $results | Where-Object { $_.Status -eq "FAIL" } | ForEach-Object {
        Write-Host "  $($_.Repo): $($_.Detail)" -ForegroundColor Red
    }
    Write-Host ""
}

if ($skipped -gt 0) {
    Write-Host "Missing repos (not cloned locally):" -ForegroundColor DarkGray
    $results | Where-Object { $_.Status -eq "MISSING" } | ForEach-Object {
        Write-Host "  $($_.Repo)" -ForegroundColor DarkGray
    }
    Write-Host ""
}
