<div align="center">
	<img alt="Windows Developer Box Automation - Project Logo" src="images/logo.png" width="200" height="200" />
	<h1>💻 Windows Developer Box Automation</h1>
	<p>
		<b>Anything and everything to make it easy to set up a Windows developer box from scratch.</b>
	</p>
	<br>
	<br>
	<br>
</div>

This repository contains everything that I use to automate my Windows system setup. I had to re-install the OS on my developer box more than once, and every single time I had to set it up just right in an effort to make it work and behave the way I wanted it to. At some point I just decided to automate as much of that process as possible - this repository contains those pieces of automation.

## Content

### Scripts

All scripts are located in the [`scripts`](https://github.com/dend/windows-dev-box/tree/main/scripts) folder. You will need administrator permissions to make sure that the changes stick.

| Script                    | Description 														 										   |
|:--------------------------|:-------------------------------------------------------------------------------------------------------------|
| `customization.bat`       | A bunch of customizations to make the OS look simple and efficient.       							 	   |
| `privacy.bat`             | Settings that enhance the privacy settings of the OS.                                                        |
| `fake-mdm-enrollment.reg` | Artificial Mobile Device Management (MDM) enrollment to enable custom settings, such as blank pages in Edge. |

### Settings

All settings are located in the [`settings`](https://github.com/dend/windows-dev-box/tree/main/settings) folder.

| File | Description |
|:-----|:------------|
| `ST_Preferences.sublime-settings` | Settings for Sublime Text 4. |
| `SM_Preferences.sublime-settings` | Settings for Sublime Merge. |

## FAQ

### One of your scripts didn't work properly. What do I do?

[Open an issue](https://github.com/dend/windows-dev-box/issues) so that I can investigate.

### Can you re-write these in {INSERT_LANGUAGE_HERE}?

Probably not, unless there is a very good reason to. Where possible, I am trying to stick to PowerShell and Batch, because those are available out-of-the-box and don't require any additional frameworks/SDKs/installations. If you feel strongly about this, either fork the repository and make the changes you need _for you_ or [open an issue](https://github.com/dend/windows-dev-box/issues) so that we can discuss.

### Is this repository showing best practices, that I can use in an enterprise deployment?

Probably not. This works on my machine, where it's intended. This might not work in other places, and it might not be compatible with specific company policies or restrictions.

### I don't like that you have a specific registry setting in a script. Can I open a pull request to remove it?

If it's something wrong/incorrect, please [open an issue first](https://github.com/dend/windows-dev-box/issues) so that I can investigate. Otherwise, feel free to fork the repository and make whatever changes are appropriate _for you_. This repository is first and foremost for my own use, for my own machine.

### Do you guarantee that everything here will work everywhere and all the time?

Nope. It might very well be that one of the scripts will not work/have unintended side-effects. No guarantees, either implied or otherwise, exist in this repository.

### I want this for macOS. Where can I get it?

Not in this repository. At some point, I will clean up and publicize my macOS automation scripts as well.
