# �A�Z���u���̓ǂݍ���
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# �t�H�[���̍쐬
$form = New-Object System.Windows.Forms.Form
$form.Text = "����"
$form.Size = New-Object System.Drawing.Size(260, 180)

# OK�{�^���̐ݒ�
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(40, 100)
$OKButton.Size = New-Object System.Drawing.Size(75, 30)
$OKButton.Text = "OK"
$OKButton.DialogResult = "OK"

# �L�����Z���{�^���̐ݒ�
$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(130, 100)
$CancelButton.Size = New-Object System.Drawing.Size(75, 30)
$CancelButton.Text = "Cancel"
$CancelButton.DialogResult = "Cancel"

# ���x���̐ݒ�
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10, 30)
$label.Size = New-Object System.Drawing.Size(250, 20)
$label.Text = "�D���Ȍ��t����͂��Ă�������"

# ���̓{�b�N�X�̐ݒ�
#$textBox = New-Object System.Windows.Forms.TextBox
#$textBox.Location = New-Object System.Drawing.Point(10, 70)
#$textBox.Size = New-Object System.Drawing.Size(225, 50)

# �R���{�{�b�N�X�̐ݒ�
$cmbBox = New-Object System.Windows.Forms.ComboBox
$cmbBox.Location = New-Object System.Drawing.Point(10, 70)
$cmbBox.Size = New-Object System.Drawing.Size(225, 50)
$cmbBox.Items.AddRange(@("Item 1", "Item 2", "Item 3"));

# �L�[�ƃ{�^���̊֌W
$form.AcceptButton = $OKButton
$form.CancelButton = $CancelButton

# �{�^�������t�H�[���ɒǉ�
$form.Controls.Add($OKButton)
$form.Controls.Add($CancelButton)
$form.Controls.Add($label)
#$form.Controls.Add($textBox)
$form.Controls.Add($cmbBox)

# �t�H�[����\�������A���̌��ʂ��󂯎��
$result = $form.ShowDialog()

# ���ʂɂ�鏈������
if ($result -eq "OK") {
    #$x = $textBox.Text
    $x = $cmbBox.Text
    $x
}