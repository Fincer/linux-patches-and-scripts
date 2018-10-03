Introduction
==============

Various programs & patches for Linux programs.

Includes universal patch files and Arch Linux specific PKGBUILD scripts.

**Packages included**
--------------

**cr2fits**
--------------

Convert Canon CR2 RAW images to FITS images. FITS format is used in astronomical applications.

More about cr2fits:

[Github.com - eaydin/cr2fits](https://github.com/eaydin/cr2fits)

FORMAT: Arch Linux PKGBUILD script.

**cr2hdr**
--------------

Dual ISO image processing tool for Canon DSLR's with Magic Lantern firmware. Convert Dual ISO DNG raw images to editable format for further processing with Photoshop/Lightroom etc.

More about Dual ISO:

[Magic Lantern Forum - Dual ISO - massive dynamic range improvement](http://www.magiclantern.fm/forum/index.php?topic=7139.0)

FORMAT: Arch Linux PKGBUILD script.

**dolphin**
--------------

A patch for Dolphin 16.12 (Plasma 5). The patch lets you autoplay all supported media formats (audio & video) in Dolphin file browser instead of clicking manually the play button every time you want preview a media file.

To use this feature, enable information panel in Dolphin (shortcut F11) and press a radio button on the right side.

Original patch code [here](https://nowardev.wordpress.com/2014/03/18/automatic-videoaudio-preview-hovering-a-file-with-phonon-in-dolphin-kde-file-manager/)

FORMAT: Patch file.

**haguichi**
--------------

Graphical front-end for LogMeIn Hamachi by Stephen Brandt. Version 1.0.26 (GTK2).

Homepage:

[Haguichi](https://www.haguichi.net/)

FORMAT: Arch Linux PKGBUILD script + source archive.

**kbd-fi-nbsp**
--------------

Custom Finnish keyboard settings and recommendations to eliminate non-breaking space character which is usually typed unintentionally in commands.

- Adds a custom 'fi_nbsp' keymap for TTY sessions (CLI)

- Recommendations to use similar layout in X11 (GUI) environments

The package includes installation instructions to set up these settings on your system.


**kde-cdemu-manager**
--------------

CDEmu Daemon manager for Plasma 5 desktop with an additional "start in systray" patch.

- minimize-at-startup.patch = Adds '--systray' option as a start parameter. When enabled, the program main window remains closed and the program is started only in the systray.

FORMAT: Arch Linux PKGBUILD script + patch file.

**kde-magiclantern-shortcut**
--------------

Adds a KDE5 compatible shortcut file (Kicker/Kickoff launchers) for magiclantern-bootablecard package.

FORMAT: Arch Linux PKGBUILD script + source files.

**kde-servicemenus-cr2fits**
--------------

Plasma 5 Dolphin service menu script for cr2fits package.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-dualiso**
--------------

Plasma 5 Dolphin service menu script for cr2hdr package.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-flifconversion**
--------------

Plasma 5 Dolphin service menu script for converting images to FLIF format.

Requirements: FLIF libraries ([GitHub source](https://github.com/FLIF-hub/FLIF) or [AUR Package](https://aur.archlinux.org/packages/flif-git/))

It is recommended that you add FLIF mimetype (as image/x-flif) in system-wide.

You may consider building imagemagick with FLIF support, too (use configure flag --with-flif) and installing qt-flif-plugin package (see it below).

FORMAT: Arch Linux PKGBUILD script + source files.

**kde-servicemenus-hexstrings**
--------------

Plasma 5 Dolphin service menu script. Extract all readable strings from a file (binary files included). Useful for file analysis.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-mediainfo**
--------------

Plasma 5 Dolphin service menu script. Show useful media information. Applies to all audio & video files.

Shows 
- media duration
- audio & video bitrate
- audio & video format
- audio channels
- video resolution
- video framerate

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-multimediatools**
--------------

Plasma 5 Dolphin service menu script for converting various video & audio files from format to format.

Supported audio formats are: aac, ac3, mp3, ogg, opus, wav, wma
Supported video formats are: avi, flv, m4v, mkv, mov, mp4, mpg, ogv, webm, wmv

This script can be used for multiple files at the same time but is developed for individual files only.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-qnapi**
--------------

Plasma 5 Dolphin service menu script for downloading video subtitles.

Requires qnapi.

FORMAT: Arch Linux PKGBUILD script + source files.

**kde-servicemenus-searchactions**
--------------

Plasma 5 Dolphin service menu script for searching strings inside files.

FORMAT: Arch Linux PKGBUILD script + source files.

**kde-servicemenus-unlockpdf**
--------------

Plasma 5 Dolphin service menu script for hacking and breaking PDF password protection. Allows you to edit read-only PDF files.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-virtualbox**
--------------

Plasma 5 Dolphin service menu script for resizing VirtualBox VDI files (virtual machines) via right clicking. 

Input value: size in gigabyte (only a number, nothing else)

FORMAT: Arch Linux PKGBUILD script + source files.

**kde-thumbnailer-ooxml-kf5**
--------------

Plasma 5 thumbnailer for Microsoft Office Open XML Documents.

According to the developer:

*This plugin should support all ooxml documents with thumbnails saved, including docx pptx ppsx xlsx files. However, most docx and xlsx documents do not have thumbnail image saved along with document body, you may not see the previews.*

*It only depends on qt and kde library. It is shipped with internal libkowmf copy for rendering wmf graphics from calligra suite. You do not need any office suite installed to make this plugin work.*

Homepage:

[KDE Office Open XML Document Thumbnailer](https://www.linux-apps.com/content/show.php?content=149048)

FORMAT: Arch Linux PKGBUILD script + a patch file.

**kdegraphics-dreamdesktop**
--------------

Video background for Plasma 4/KDE4 desktop environment.

FORMAT: Arch Linux PKGBUILD script + patch file.

**magiclantern-bootablecard**
--------------

Add Canon's boot flag into a SD card, as required by Magic Lantern firmware. Original source code [here](https://bitbucket.org/hudson/magic-lantern/src/11f405b62b31/contrib/make-bootable/?at=crop_rec_4k)

The bash script file has been modified to be more user-friendly. You can use a custom mount point, and the script asks you confirmation about the correct path before the script execution starts.

Usage: once you've inserted a SD card into your computer, use 'ml-bootablecard' command to add the boot flag.

FORMAT: Arch Linux PKGBUILD script + custom source files.

**mlv2dng**
--------------

Magic Lantern Raw file conversion tool for MLV files. Extract individual DNG frames from MLV files.

FORMAT: Arch Linux PKGBUILD script.

**mlvdump**
--------------

Magic Lantern Raw file conversion tool for MLV files. Extract individual DNG frames from MLV files.

FORMAT: Arch Linux PKGBUILD script.

**pano2vr**
--------------

Create virtual panorama tours using panorama images.

NOTE: The PKGBUILD script is outdated but can still be useful for some people.

Homepage:

[Garden Gnome Software - Pano2VR](https://ggnome.com/pano2vr)

FORMAT: Arch Linux PKGBUILD script.

**panotour**
--------------

Create virtual panorama tours using panorama images.

Homepage:

[Kolor - Panotour](http://www.kolor.com/panotour/download/)

FORMAT: Arch Linux PKGBUILD script.

**panotourpro**
--------------

Create virtual panorama tours using panorama images. Professional version with additional features.

Homepage:

[Kolor - Panotour](http://www.kolor.com/panotour/download/)

FORMAT: Arch Linux PKGBUILD script.

**photoscan**
--------------

Create textured 3D models from multiple still images.

Homepage:

[Agisoft - Photoscan](http://www.agisoft.com/)

FORMAT: Arch Linux PKGBUILD script.

**photoscan-pro**
--------------

Create textured 3D models from multiple still images. Professional version with additional features.

Homepage:

[Agisoft - Photoscan](http://www.agisoft.com/)

FORMAT: Arch Linux PKGBUILD script.

**pidgin-smileys-facebook**
--------------

Facebook smileys for Pidgin.

FORMAT: Arch Linux PKGBUILD script + source archive.

**pidgin-smileys-msn**
--------------

Windows Live Messenger smileys for Pidgin

FORMAT: Arch Linux PKGBUILD script.

Homepage:

[Pidgin Themes - Windows Live Messenger smilies](http://www.pidginthemes.com/smilies/windows%20live%20messenger/)

**plasma-workspace-wallpaper-video**
--------------

Video and video playlist background for Plasma 5/KDE5 desktop. 

For details, please see the following KDE forum topic:

[Video and HTML wallpaper types - KDE Community Forums](https://forum.kde.org/viewtopic.php?f=289&t=131783)

NOTE: The video background may still be buggy. For example, I lose the background video immediately after closing the desktop settings window. I may miss some dependencies but couldn't been able to narrow down the issue yet.

FORMAT: Arch Linux PKGBUILD script + source files.

**playonlinux**
--------------

Patches for PlayOnLinux 4.2.10.

- 0001-remove-menuitems.patch = Remove Twitter, Facebook, Google+ menu items. Remove duplicate Run, Remove, Install menu items. Remove Donate menu item.

- 0002-add-shortcutitems.patch = Add an option to remove shortcuts from Desktop & .local/share/applications/ directory. While creating a shortcut, add it to both of these places instead of only Desktop. Create winexec bash script file for Wine, and link it to "Execute" field of each shortcut/.desktop file. Remove French localization & "Comment=PlayOnLinux" fields from desktop files.

For details about Winexec bash script, see this [AskUbuntu](https://askubuntu.com/questions/123092/open-file-using-custom-command-how-to-specify-the-file-in-cmd-line) page. 

- 0003-add-addremoveprograms.patch = Add Add/Remove programs menu shortcut for each program listed on PlayOnLinux program menu.

- 0004-change-wineversions.patch = Highlight unused Wine versions.

- 0005-add-optimussupport.patch = Doesn't work? Attempt to add Optimus/Optirun support for PlayOnLinux

- 0006-disable-updatenotification.patch = Disable pop-up update notification.

- 0007-disable-closingandwinemessage.patch = Disable confirmation for closing the program. Remove Wine dependency (so that user don't need to install Wine on their systems in order to use PlayOnLinux)

FORMAT: Arch Linux PKGBUILD script + patch files.

**purple-whatsapp**
--------------

WhatsApp protocol implementation for libpurple (Pidgin)

NOTE: Deprecated plugin, the development has been suspended. Doesn't support the new whatsapp web interface.

FORMAT: Arch Linux PKGBUILD script.

**qgifer**
--------------

Patch qgifer codebase for Qt5 & the newest giflib. NOTE: Qgifer is a deprecated/abandoned program.

Homepage:

[SourceForge.net - QGifer](https://sourceforge.net/projects/qgifer/)

FORMAT: Arch Linux PKGBUILD script + patch files.

**qnapi**
--------------

Qt5 client for downloading movie subtitles from NapiProjekt, OpenSubtitles, Napisy24

Includes patch files for translation of polish strings to english.

Homepage:

[Github - QNapi](https://github.com/QNapi/qnapi/)

FORMAT: Arch Linux PKGBUILD script + patch files.

**qt-flif-plugin**
--------------

Add FLIF image format support for KDE environment.

NOTE: Add image/x-flif Mimetype to get this work (works with gwenview & kolourpaint at least).

FORMAT: Arch Linux PKGBUILD script.

**sockstat**
--------------

Linux variant of [FreeBSD sockstat command](https://www.freebsd.org/cgi/man.cgi?query=sockstat&apropos=0&sektion=0&manpath=FreeBSD+7.1-RELEASE&format=html)

"The sockstat command lists	open Internet or UNIX domain sockets."

**u3d**
--------------

Set of libraries to manipulate U3D-formatted data. IDTF to U3D converter.

FORMAT: Arch Linux PKGBUILD script + source archive.

**wine-playonlinux**
--------------

Patches & customized PKGBUILD script for Wine (Staging). Automatic PlayOnLinux installation script included.

Usage: To compile Wine-Staging with all included custom patches, please run 1-install-wine-to-pol.sh.

NOTE: Compiled package is not very well compatible with standard Wine installation methods on Arch Linux, thus the script removes compiled tar.xz file.

- custompatch_default-documents-dir.patch = Use XDG_WINEDOCUMENTS_DIR as a default Documents directory for Wine prefixes by default. You need to specify XDG_WINEDOCUMENTS_DIR in your $HOME/.config/user-dirs.dirs file.

For more information, check [this](https://forum.winehq.org/viewtopic.php?f=8&t=28582) WineHQ forum topic.

- custompatch_disable_automatic_menubuilding.patch = Disable winemenubuilder.exe, just to prevent automatic file associations.

- custompatch_glsl_shader.patch = GLSL shaders patch for Wine.

- custompatch_msi-add-dummyactionthreads.patch = Add MSI dummy actions since Wine lacks a proper implementation of MSI custom action server. See details [here](https://bugs.winehq.org/show_bug.cgi?id=18070)

Basically, this patch helps you installing many useful programs on Wine which would otherwise be impossible.

- custompatch_photoshop_getticks_input.c.patch = Photoshop brush patch for Wine. Details [here](https://bugs.winehq.org/show_bug.cgi?id=29871)

- custompatch_photoshop_keepfocus_message.c.patch = Patch for keeping window focus while using Camera Raw plugin.

- custompatch_photoshop_tooltip_win.c.patch = Patch for hovering Photoshop tooltip pop-ups.

Includes *install-wine-theme-to-polprefixes* subfolder which includes a script that changes theme for all existing PlayOnLinux wine prefixes automatically.
You can customize the script to suit your needs. The purpose of this script is to improve & automate management of multiple prefix themes.

FORMAT: Arch Linux PKGBUILD script + patch files + PlayOnLinux script & files.

**wine-launcher-creator**
--------------

A Python-based GUI for creating Wine application launchers/Desktop shortcuts.

FORMAT: Arch Linux PKGBUILD script + source archive.

**xclipshow**
--------------

QT5 based program which shows information about the current clipboard content.

Original program code & instructions here:

[Application that allows to show clipboard contents and its MIME type?](https://unix.stackexchange.com/questions/163081/application-that-allows-to-show-clipboard-contents-and-its-mime-type)

FORMAT: Arch Linux PKGBUILD script + source files.

NOTE: This program is useful if used with a combination of commands. I tend to use the program to automate 'take a screenshot and paste it to Kolourpaint' process. To achieve my goal, I need Plasma 5 desktop environment + two additional command-line programs: loliclip & imagemagick.

For additional info and exact commands (and where to put them), please take a look into /xclipshow/printscreen file.

**xephem**
--------------

A Serious Interactive Astronomical Software Ephemeris.

Includes a custom desktop shortcut image & desktop shortcut which are not included in the AUR package.

Homepage:

[XEphem](http://www.clearskyinstitute.com/xephem/)

FORMAT: Arch Linux PKGBUILD script + desktop shortcut + custom desktop shortcut image.

**zsnes-netplay**
--------------

ZSnes Nintendo SNES emulator for Linux. Netplay version.

Homepage:

[ZSnes Emulator](http://www.zsnes.com/)

FORMAT: Arch Linux PKGBUILD script + source archive + patch files.
