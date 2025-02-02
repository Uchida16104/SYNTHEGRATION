# This script activates a Python virtual environment in PowerShell.

# Check if running in PowerShell
if (-not ($PSVersionTable -and $PSVersionTable.PSVersion)) {
    Write-Error 'This script must be run in PowerShell.'
    exit 1
}

# Define the root directory of the virtual environment
$venvDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Define the Python executable path within the virtual environment
$pythonExe = Join-Path $venvDir 'python.exe'

# Check if Python executable exists
if (-not (Test-Path $pythonExe)) {
    Write-Error 'Python executable not found in the virtual environment. Make sure the environment is properly set up.'
    exit 1
}

# Set the PATH variable to include the virtual environment's Scripts directory
$env:PATH = "$venvDir;$env:PATH"

# Set the VIRTUAL_ENV environment variable to indicate the active virtual environment
$env:VIRTUAL_ENV = $venvDir

# Override the default PowerShell prompt to indicate the active virtual environment
function global:prompt {
    "[venv] $($executionContext.SessionState.Path.CurrentLocation)> "
}

# Confirm activation
Write-Host "Virtual environment activated. Python interpreter: $pythonExe"
