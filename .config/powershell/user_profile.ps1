# PROMPT
Import-Module Terminal-Icons
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\csx.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# ALIAS
Set-Alias ll ls
Set-Alias  g git
Set-Alias  grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# UTILITIES
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}





