#create output directory
new-item "./out" -ItemType Directory -Force > $null

# pack lovely version
Compress-Archive -Path @("./LovelySrc/*", "./assets") -DestinationPath "./out/BU-glasses.zip" -Force

#pack malverk version
new-item "./malverk" -ItemType Directory  -Force > $null
Compress-Archive -Path @("./MalverkSrc/*", "./assets") -DestinationPath "./out/BU-glasses-malverk.zip" -Force

# install version according to malverk presence
do {
    $confirmation = Read-Host "install mod ? [y(es) / n(o)]"    
} until ($confirmation -in @('y','n','yes','no'))

if ($confirmation -in @('y','yes')) {
    if (Test-Path -Path "$($env:APPDATA)/Balatro/Mods") {
        if (Test-Path -Path "$($env:APPDATA)/Balatro/Mods/Malverk") {
            Remove-Item -Recurse -ErrorAction SilentlyContinue -Path "$($env:APPDATA)/Balatro/Mods/BU-glasses-malverk"
            Expand-Archive -Path "./out/BU-glasses-malverk.zip" -DestinationPath "$($env:APPDATA)/Balatro/Mods/BU-glasses-malverk"
            Write-Host "Malverk version installed"
        } else {
            Remove-Item -Recurse -ErrorAction SilentlyContinue -Path "$($env:APPDATA)/Balatro/Mods/BU-glasses"
            Expand-Archive -Path "./out/BU-glasses.zip" -DestinationPath "$($env:APPDATA)/Balatro/Mods/BU-glasses"
            Write-Host "Lovely version installed"
        }
    } else {
        Write-Warning "Unable to find '%AppData%/Balatro/Mods'. Seems like you have a custom install.`nMod not installed."
    }
}




