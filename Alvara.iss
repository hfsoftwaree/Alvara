;HF - SOFTWARE
;66-571-1362/1170
;Heder

[Setup]
AppName=Alvará 2005/V-2006
AppVerName=Alvará 2005 1.0 de 13/01/2006
AppPublisher=HF-Informática
DefaultDirName={pf}\HF-Software\Alvara
DefaultGroupName=HF-Software\Alvara
Compression=lzma
SolidCompression=yes

[Registry]
Root: HKCU; Subkey: "Software\HF Softwares"; Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\HF Softwares\Alvara"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\HF Softwares\Alvara"; ValueType: string; ValueName: "CaminhoDados"; ValueData: "C:\Arquivos de programas\HF-Software\GE"

[Languages]
Name: de; MessagesFile: "compiler:Languages\Portuguesestd.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\HF-Desenvolvimento\Sistemas\Alvara\Alvara.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\HF-Desenvolvimento\Sistemas\Alvara\RA.doc"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Alvara"; Filename: "{app}\Alvara.exe"
Name: "{group}\{cm:UninstallProgram,Alvara}"; Filename: "{uninstallexe}"

Name: "{userdesktop}\Alvara"; Filename: "{app}\Alvara.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Alvara"; Filename: "{app}\Alvara.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Alvara.exe"; Description: "{cm:LaunchProgram,Alvara}"; Flags: nowait postinstall skipifsilent

