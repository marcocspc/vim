if (Test-Path -Path ".vim") {
    Write-Output "Copiando .vim para sua pasta pessoal."
	Copy-Item -Path ".vim" -Destination "$HOME" -Recurse
} else {
    Write-Host ".vim não encontrado, ignorando..."
}

if (Test-Path -Path ".vimrc" -PathType Leaf) {
    Write-Output "Copiando .vimrc para sua pasta pessoal."
	Copy-Item -Path ",vimrc" -Destination "$HOME" -Recurse
} else {
    Write-Host ".vimrc não encontrado, ignorando..."
}

Write-Host "Concluído."
