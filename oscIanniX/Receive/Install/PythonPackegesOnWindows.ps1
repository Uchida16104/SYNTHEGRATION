# Step 1: Create a virtual environment
Write-Host 'Creating a virtual environment...'
Set-Location ~
python -m venv venv
if (-not (Test-Path './venv/Scripts/Activate.ps1')) {
    Write-Host 'Failed to create a virtual environment.'
    exit 1
}
& ./venv/Scripts/Activate.ps1
Write-Host 'Virtual environment activated.'

# Step 2: Install pipx
Write-Host 'Installing pipx using Chocolatey...'
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host 'Chocolatey not found. Please install Chocolatey first.'
    deactivate
    exit 1
}
choco install pipx -y
if ($LASTEXITCODE -ne 0) {
    Write-Host 'Failed to install pipx.'
    deactivate
    exit 1
}
Write-Host 'pipx installed successfully.'

# Step 3: Prompt for libraries to install
$libraries = Read-Host 'Enter the libraries you want to install (separated by spaces)'
foreach ($lib in $libraries -split ' ') {
    Write-Host "Installing $lib..."
    pip install $lib
    pipx install $lib
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to install $lib."
        deactivate
        exit 1
    }
    Write-Host "$lib installed successfully."
}

# Step 4: Ask if the user wants to deactivate the virtual environment
$choice = Read-Host 'Do you want to deactivate the virtual environment? (y/n)'
if ($choice -eq 'y' -or $choice -eq 'Y') {
    deactivate
    Write-Host 'Virtual environment deactivated.'
}
else {
    Write-Host "You can now continue working in the virtual environment. Type 'deactivate' when you're done."
    cmd
}
