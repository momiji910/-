#何分間動かすか指定
#60だったら1時間
$x = 60
$i = 1

write "start!"

while ($i -le $x) {
    #59秒処理を停止
    Start-Sleep 59;

    #メモ帳起動
    notepad.exe

    #メモ帳終了
    #＜注意＞メモ帳で開かれているものはすべて閉じます
    $pro = Get-process notepad
    Start-Sleep 1;
    if ( $pro -ne $null ) {
    Stop-process -name notepad
    }

    $x -=1

    write "残り $x 分"
}
write "Finish!"
