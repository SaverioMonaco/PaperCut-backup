:: https://github.com/SaverioMonaco/PaperCut-backup
:: Per la guida come settare il backup automaticamente

:: First of all let us connect to NAS
net use \\10.10.10.10 /user:USERNAME PASSWORD

:: Copy data to NAS
:: /s and /e copy subfolder and empy subfolders
:: /Y overwrites the file without asking
xcopy "C:\Program Files\PaperCut NG\server\data" "\\10.10.10.10/Commissioni e Gruppi/Commissione Informatica/PaperCut/server/data" /s /e /Y

:: Remove connection
net use /delete \\10.10.10.10\IPC$