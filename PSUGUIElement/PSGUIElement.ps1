#######################################################################
#                          PSUGUIElement                              #
#                                                                     #
#              PSGUIElement is a cheat sheet for                      #
#              Powershell GUI elements.                               #
#                                                                     #
#                                                                     #
#                          Date: 4/23/2024                            #
#                                                                     #
#######################################################################

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# #################################### MAIN FORM START ################################ #
# Form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Powershell Form Elements"
$Form.Width = 613
$Form.Height = 400
$Form.BackColor = "SlateGray"

# Label
$elementboxLabel = New-Object System.Windows.Forms.Label
$elementboxLabel.Text = "Element:"
$elementboxLabel.ForeColor = [System.Drawing.Color]::White
$elementboxLabel.Size = New-Object Drawing.Point(130, 15)
$elementboxLabel.Location = New-Object System.Drawing.Size(10, 10)

# List Box
$elelistBox = New-Object System.Windows.Forms.ListBox
$elelistBox.Size = New-Object System.Drawing.Size(140, 320)
$elelistBox.Location = New-Object System.Drawing.Size(10, 25)
[void] $elelistBox.Items.Add("Label")
[void] $elelistBox.Items.Add("Link Label")
[void] $elelistBox.Items.Add("Text Box MultiLine")
[void] $elelistBox.Items.Add("Text Box OneLine")
[void] $elelistBox.Items.Add("Rich Text Box")
[void] $elelistBox.Items.Add("Masked Text Box")
[void] $elelistBox.Items.Add("Combo Box")
[void] $elelistBox.Items.Add("Button")
[void] $elelistBox.Items.Add("Progress Bar")
[void] $elelistBox.Items.Add("Radio Button")
[void] $elelistBox.Items.Add("Check Box")
[void] $elelistBox.Items.Add("Panel")
[void] $elelistBox.Items.Add("Picture Box")
[void] $elelistBox.Items.Add("List View")
[void] $elelistBox.Items.Add("List Box")
[void] $elelistBox.Items.Add("Checked List Box")
[void] $elelistBox.Items.Add("Group Box")
[void] $elelistBox.Items.Add("Data Grid View")



$elelistBox.Add_SelectedIndexChanged({
    if ($elelistBox.SelectedItem -eq "Label") {
        $label.Show()
        $eleexampleLabel.Text = "Label Example:"
    }
    else {
        $label.Hide()
        $linkLabel.Hide()
        $textBoxML.Hide()
        $textBoxOL.Hide()
        $textBoxR.Hide()
        $textBoxMA.Hide()
        $comboBox.Hide()
        $button.Hide()
        $progressBar.Hide()
        $radioButton.Hide()
        $checkBox.Hide()
        $panel.Hide()
        $pictureBox.Hide()
        $listView.Hide()
        $listBox.Hide()
        $listBoxCH.Hide()
        $groupBox.Hide()
        $datagridView.Hide()
}


    if ($elelistBox.SelectedItem -eq "Link Label") {
        $linkLabel.Show()
        $eleexampleLabel.Text = "Link Label Example:"
    }
    if ($elelistBox.SelectedItem -eq "Text Box OneLine") {
        $textBoxOL.Show()
        $eleexampleLabel.Text = "Text Box OneLine Example:"
    }
    if ($elelistBox.SelectedItem -eq "Text Box MultiLine") {
        $textBoxML.Show()
        $eleexampleLabel.Text = "Text Box MultiLine Example:"
    }
    if ($elelistBox.SelectedItem -eq "Rich Text Box") {
        $textBoxR.Show()
        $eleexampleLabel.Text = "Rich Text Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Masked Text Box") {
        $textBoxMA.Show()
        $eleexampleLabel.Text = "Masked Text Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Combo Box") {
        $comboBox.Show()
        $eleexampleLabel.Text = "Combo Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Button") {
        $button.Show()
        $eleexampleLabel.Text = "Button Example:"
    }

    if ($elelistBox.SelectedItem -eq "Progress Bar") {
        $progressBar.Show()
        $eleexampleLabel.Text = "Progress Bar Example:"
    }

    if ($elelistBox.SelectedItem -eq "Radio Button") {
        $radioButton.Show()
        $eleexampleLabel.Text = "Radio Button Example:"
    }

    if ($elelistBox.SelectedItem -eq "Check Box") {
        $checkBox.Show()
        $eleexampleLabel.Text = "Check Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Panel") {
        $panel.Show()
        $eleexampleLabel.Text = "Panel Example:"
    }

    if ($elelistBox.SelectedItem -eq "Picture Box") {
        $pictureBox.Show()
        $eleexampleLabel.Text = "Picture Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "List View") {
        $listView.Show()
        $eleexampleLabel.Text = "List View Example:"
    }

    if ($elelistBox.SelectedItem -eq "List Box") {
        $listBox.Show()
        $eleexampleLabel.Text = "List Box Example:"
    }
    
    if ($elelistBox.SelectedItem -eq "Checked List Box") {
        $listBoxCH.Show()
        $eleexampleLabel.Text = "Checked List Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Group Box") {
        $groupBox.Show()
        $eleexampleLabel.Text = "Group Box Example:"
    }

    if ($elelistBox.SelectedItem -eq "Data Grid View") {
        $datagridView.Show()
        $eleexampleLabel.Text = "Data Grid View Example:"
    }

})

# Label
$eleexampleLabel = New-Object System.Windows.Forms.Label
$eleexampleLabel.Text = "Example:"
$eleexampleLabel.ForeColor = [System.Drawing.Color]::White
$eleexampleLabel.Size = New-Object Drawing.Point(190, 15)
$eleexampleLabel.Location = New-Object System.Drawing.Size(160, 10)

# Main Form Add
$Form.Controls.Add($elementboxLabel)
$Form.Controls.Add($elelistBox)
$Form.Controls.Add($eleexampleLabel)

# #################################### MAIN FORM END ################################ #

# ############################### EXAMPLE ELEMENTS START ############################ #

# ##################### Labels START ##################### #

# Label
$label = New-Object System.Windows.Forms.Label
$label.Text = "Label"
$label.BackColor = [System.Drawing.Color]::White
$label.Size = New-Object Drawing.Point(130,60)
$label.Location = New-Object System.Drawing.Size(270,160)
$label.Hide()

# Link Label

$linkLabel = New-Object System.Windows.Forms.LinkLabel
$linkLabel.Text = "Link Label"
$linklabel.LinkColor = "BLUE"
$linkLabel.ActiveLinkColor = "RED"
$linkLabel.BackColor = [System.Drawing.Color]::White
$linkLabel.Size = New-Object System.Drawing.Size(130,60)
$linkLabel.Location = New-Object System.Drawing.Point(270,160)
$linkLabel.Hide()

# ##################### Labels END ##################### #

# ##################### Textbox Start ##################### #

# Textbox Multiline = $True

$textBoxML = New-Object System.Windows.Forms.TextBox
$textBoxML.Text = "Textbox Multiline = $True"
$textBoxML.Multiline = $true
$textBoxML.Size = New-Object System.Drawing.Size(130,60)
$textBoxML.Location = New-Object System.Drawing.Size(270,160)
$textBoxML.Hide()

# Textbox Multiline = $False

$textBoxOL = New-Object System.Windows.Forms.TextBox
$textBoxOL.Text = "Textbox Multiline = $false"
$textBoxOL.Multiline = $false
$textBoxOL.Size = New-Object System.Drawing.Size(130,60)
$textBoxOL.Location = New-Object System.Drawing.Size(270,160)
$textBoxOL.Hide()

$textBoxR = New-Object System.Windows.Forms.RichTextBox
$textBoxR.Text = "Textbox Multiline = $True"
$textBoxR.Text = "Rich Text Box"
$textBoxR.Size = New-Object System.Drawing.Size(130,60)
$textBoxR.Location = New-Object System.Drawing.Size(270,160)
$textBoxR.Hide()

# Why use the Mask property?

# Use the Mask property to limit the textbox’s input to a specific format. 
# You can define your own custom mask or preferably select from a predefined set 
# using the designer. The designer has a useful set of predefined masks such as date 
# time formats, phone numbers, and zip codes.
$textBoxMA = New-Object System.Windows.Forms.MaskedTextBox
$textBoxMA.Text = "Textbox Multiline = $True"
$textBoxMA.Text = "Masked Text Box"
$textBoxMA.Size = New-Object System.Drawing.Size(130,60)
$textBoxMA.Location = New-Object System.Drawing.Size(270,160)
$textBoxMA.Hide()


# ##################### Textbox END ##################### #


# Combo box

$comboBox = New-Object System.Windows.Forms.ComboBox
$comboBox.Text = "Combo Box"
$comboBox.Size = New-Object System.Drawing.Size(130, 30)
$comboBox.Location = New-Object System.Drawing.Size(270,160)
$comboBox.Hide()

# Button

$button = New-Object System.Windows.Forms.Button
$button.Text = "Button"
$button.Size = New-Object System.Drawing.Size(130, 30)
$button.Location = New-Object System.Drawing.Size(270,160)
$button.Hide()

# ProgressBar

$progressBar = New-Object System.Windows.Forms.ProgressBar
$progressBar.Size = New-Object System.Drawing.Size(130,30)
$progressBar.Location = New-Object System.Drawing.Size(270,160)
$progressBar.Hide()

# Radio Button

$radioButton = New-Object System.Windows.Forms.RadioButton
$radioButton.Text = "Radio Button"
$radioButton.Size = New-Object System.Drawing.Size(130,30)
$radioButton.Location = New-Object System.Drawing.Size(270,160)
$radioButton.Hide()

# Check Box

$checkBox = New-Object System.Windows.Forms.CheckBox
$checkBox.Text = "Check Box"
$checkBox.Size = New-Object System.Drawing.Size(130,30)
$checkBox.Location = New-Object System.Drawing.Size(270,160)
$checkBox.Hide()

#Panel

$panel = New-Object System.Windows.Forms.Panel
$panel.BackColor = '224, 224, 224'
$panel.Size = New-Object System.Drawing.Size(420, 318)
$panel.Location = New-Object System.Drawing.Size(160, 25) 
$panel.Hide()

#Picture Box

$file = (Get-Item 'D:\Powershell\PSGUIElements\PB.png')
$img = [System.Drawing.Image]::FromFile($file);


$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Image = $img
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$pictureBox.BackColor = '224, 224, 224'
$pictureBox.Size = New-Object System.Drawing.Size(420, 318)
$pictureBox.Location = New-Object System.Drawing.Size(160, 25) 
$pictureBox.Hide()

# List View

$listView = New-Object System.Windows.Forms.ListView
$listView.View = 'Details'
$listView.Columns.Add('List View1', 90)| Out-Null
$listView.Columns.Add('List View2', 90)| Out-Null
$listView.Size = New-Object System.Drawing.Size(420, 318)
$listView.Location = New-Object System.Drawing.Size(160, 25)
$listView.Hide()

# ############################ Boxes Start ############################# #
# List Box

$listBox = New-Object System.Windows.Forms.ListBox
$listBox.Items.Add("Item1")
$listBox.Items.Add("Item2")
$listBox.Items.Add("Item3")
$listBox.Size = New-Object System.Drawing.Size(420, 318)
$listBox.Location = New-Object System.Drawing.Size(160, 25)
$listBox.Hide()

$listboxCH = New-Object System.Windows.Forms.CheckedListBox
$listBoxCH.Items.Add("Item1")
$listBoxCH.Items.Add("Item2")
$listBoxCH.Items.Add("Item3")
$listBoxCH.Size = New-Object System.Drawing.Size(420, 319)
$listBoxCH.Location = New-Object System.Drawing.Size(160, 25)
$listboxCH.Hide()

# Group Box

$groupBox = New-Object System.Windows.Forms.GroupBox
$groupBox.Text = "Group Box"
$groupBox.Size = New-Object System.Drawing.Size(420, 318)
$groupBox.Location = New-Object System.Drawing.Size(160, 25)
$groupBox.Hide()

# Data Grid View

$datagridView = New-Object System.Windows.Forms.DataGridView
$datagridView.ColumnCount = 4
$datagridView.Columns[0].Name = "Data Grid View 1"
$datagridView.Columns[1].Name = "Data Grid View 2"
$datagridView.Columns[2].Name = "Data Grid View 3"
$datagridView.Columns[3].Name = "Data Grid View 4"
$datagridView.Size = New-Object System.Drawing.Size(420, 318)
$datagridView.Location = New-Object System.Drawing.Size(160, 25)
$datagridView.Hide()

# Flow Layout Panel

$flowlayoutpanel = New-Object System.Windows.Forms.FlowLayoutPanel

$flowlayoutpanel.Size = New-Object System.Drawing.Size(420, 318)
$flowlayoutpanel.Location = New-Object System.Drawing.Size(160, 25)

# Output



$Form.Controls.AddRange(@($label, $linkLabel, $textBoxML, $textBoxOL, $textBoxR, $textBoxMA, $comboBox, $button, $progressBar, $radioButton,
$checkBox, $panel, $pictureBox, $listView, $listBox, $listBoxCH, $groupBox, $datagridView))

# ############################### EXAMPLE ELEMENTS END ############################## #



$Form.Add_Shown({$Form.Activate()})
$Form.ShowDialog()

$form.Dispose()
