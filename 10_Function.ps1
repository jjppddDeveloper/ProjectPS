#
# 文字列をコンソールに表示する
#
function Display($message) {
    Write-Host $message
}

#
# 外部ファイルデータを取得する
#
function GetDataFile($path) {
    Get-Content $path
}