Import-Module -Name Terminal-Icons

Import-Module PSFzf

# Override PSReadLine's history search
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' `
                -PSReadlineChordReverseHistory 'Ctrl+r'

# Override default tab completion
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

Import-Module oh-my-posh
# Set-PoshPrompt -Theme "C:\Users\Ean\AppData\Local\Programs\oh-my-posh\themes\microverse-power.omp.json"
Set-PoshPrompt -Theme ~/mizu.omp.json
#
# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-2-beta-2-with-dynamic-help/
# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
#
Set-PSReadLineOption -PredictionSource History
# Alternate color options:
# Set-PSReadLineOption -Colors @{ InlinePrediction = '#8A0303'}
# Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
Set-PSReadLineOption -Colors @{ InlinePrediction = "$([char]0x1b)[36;7;238m"}
Set-PSReadLineOption -PredictionViewStyle ListView
# Azure
# Find-Module Az.Tools.Predictor -AllowPrerelease
# Starship Shell
# Invoke-Expression (&starship init powershell)
