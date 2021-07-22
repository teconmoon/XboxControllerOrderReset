# The eternal struggle

We've all been there. We're playing a game in Windows with some XInput controller, maybe an old wired Xbox 360 controller or a controller being spoofed as XInput by another program. Maybe it's a shiny new Xbox Wireless Controller from our Series X/S.

Then we unplug or otherwise disconnect our controller (how dare we) and plugin a different controller. Maybe we just like different controllers for different games, who cares right? Windows appears to care, because the controller we just plugged in is now stuck as Player 2 until we reboot our computer. This sucks, especially when many games won't operate unless it's detecting the controller as "Player 1".

This script attempts to aleviate this issue by offering a one-click solution to clean-up all unplugged controllers in Windows. What this does is use [PnPUtil](https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/pnputil) to build an array of disconnected Xbox 360 controllers and Xbox One controllers, and remove them from Windows.

The proper usage of this script would be as follows:
1. Unplug all XInput game controllers
2. Launch **Reset Controllers.cmd**, and elevate as an administrator when prompted (Or right-click run as admin from the get-go)
3. Plug your controllers back into your computer in the order you want Windows to see them in

That's it, no reboots necessary! Hopefully Microsoft adds better controller support with Windows 11, but I'm doubtful.

# **To-Do:**
1. Find a way to have this script automatically run via something like Task Scheduler (I haven't been able to find a sufficient Event Viewer log to use as a trigger)
2. Add any missing Controller Classes (I don't own many controllers so I'm sure I'm missing some device classes)
