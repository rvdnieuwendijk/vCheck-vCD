# You can change the following defaults by altering the below settings:
#

# Set the following to true to enable the setup wizard for first time run
$SetupWizard =$true

# Start of Settings
# Please Specify the SMTP server address
$SMTPSRV ="mysmtpserver.mydomain.local"
# Please specify the email address who will send the vCheck report
$EmailFrom ="me@mydomain.local"
# Please specify the email address who will recieve the vCheck report
$EmailTo ="me@mydomain.local"
# Would you like the report displayed in the local browser once completed ?
$DisplaytoScreen =$True
# Use the following item to define if an email report should be sent once completed
$SendEmail =$false
# If you would prefer the HTML file as an attachement then enable the following:
$SendAttachment =$false
# Use the following area to define the title color
$Colour1 ="018AC0"
# Use the following area to define the Heading color
$Colour2 ="7BA7C7"
# Use the following area to define the Title text color
$TitleTxtColour ="FFFFFF"
# End of Settings

$Date = Get-Date
