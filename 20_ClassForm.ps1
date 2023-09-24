# アセンブリの読み込み
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# フォームの作成
$form = New-Object System.Windows.Forms.Form
$form.Text = "入力"
$form.Size = New-Object System.Drawing.Size(260, 180)

# OKボタンの設定
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(40, 100)
$OKButton.Size = New-Object System.Drawing.Size(75, 30)
$OKButton.Text = "OK"
$OKButton.DialogResult = "OK"

# キャンセルボタンの設定
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(130, 100)
$CancelButton.Size = New-Object System.Drawing.Size(75, 30)
$CancelButton.Text = "Cancel"
$CancelButton.DialogResult = "Cancel"

# ラベルの設定
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10, 30)
$label.Size = New-Object System.Drawing.Size(250, 20)
$label.Text = "好きな言葉を入力してください"

# 入力ボックスの設定
#$textBox = New-Object System.Windows.Forms.TextBox
#$textBox.Location = New-Object System.Drawing.Point(10, 70)
#$textBox.Size = New-Object System.Drawing.Size(225, 50)

# コンボボックスの設定
$cmbBox = New-Object System.Windows.Forms.ComboBox
$cmbBox.Location = New-Object System.Drawing.Point(10, 70)
$cmbBox.Size = New-Object System.Drawing.Size(225, 50)
$cmbBox.Items.AddRange(@("Item 1", "Item 2", "Item 3"));

# キーとボタンの関係
$form.AcceptButton = $OKButton
$form.CancelButton = $CancelButton

# ボタン等をフォームに追加
$form.Controls.Add($OKButton)
$form.Controls.Add($CancelButton)
$form.Controls.Add($label)
#$form.Controls.Add($textBox)
$form.Controls.Add($cmbBox)

# フォームを表示させ、その結果を受け取る
$result = $form.ShowDialog()

# 結果による処理分岐
if ($result -eq "OK") {
    #$x = $textBox.Text
    $x = $cmbBox.Text
    $x
}