# Get array of Xbox 360 Device Class, and cleanup array for processing
[array] $PnPoutput = pnputil /enum-devices /disconnected /class XnaComposite
$PnPoutput = $PnPoutput -split ":" -replace ' ',''

# Remove devices listed in array
foreach ( $controller in $PnPoutput)
{
	if ( $controller.StartsWith("USB") )
	{
		pnputil /remove-device $controller
	}
}

# Get array of Xbox Wireless Controller Device Class, and cleanup array for processing
[array] $PnPoutput = pnputil /enum-devices /disconnected /class XboxComposite
$PnPoutput = $PnPoutput -split ":" -replace ' ',''

# Remove devices listed in array
foreach ( $controller in $PnPoutput)
{
	if ( $controller.StartsWith("USB") )
	{
		pnputil /remove-device $controller
	}
}
