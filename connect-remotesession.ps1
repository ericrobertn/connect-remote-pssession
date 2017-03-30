[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')

$title = 'BOFI Remote Server Connection'
$msg   = 'Enter the remote server below:'

$Server = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)


$credential = Get-Credential $env:USERNAME

$session =  new-pssession -ComputerName $Server -Credential $credential
Write-Host "Starting remote session..." -BackgroundColor Black -ForegroundColor Green
enter-pssession $session


