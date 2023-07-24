$files = Get-ChildItem -Filter "file*"

foreach ($file in $files) {
	Remove-Item $file
}