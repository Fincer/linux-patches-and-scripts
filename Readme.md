Introduction
==============

Various programs & patches for Linux programs.

Includes universal patch files and Arch Linux specific PKGBUILD scripts.

**Packages included**
--------------

**cr2fits**
--------------

Convert Canon CR2 RAW images to FITS images. FITS format is used in astronomical applications.

FORMAT: Arch Linux PKGBUILD script.

**cr2hdr**
--------------

Dual ISO image processing tool for Canon DSLR's with Magic Lantern firmware. Convert Dual ISO DNG raw images to editable format for further processing with Photoshop/Lightroom etc.

FORMAT: Arch Linux PKGBUILD script.

**dolphin**
--------------

A patch for Dolphin 16.12 (Plasma 5). The patch lets you autoplay all supported media formats (audio & video) in Dolphin file browser instead of clicking manually the play button every time you want preview a media file.

To use this feature, enable information panel in Dolphin (shortcut F11) and press a radio button on the right side.

Original patch code [here](https://nowardev.wordpress.com/2014/03/18/automatic-videoaudio-preview-hovering-a-file-with-phonon-in-dolphin-kde-file-manager/)

FORMAT: Patch file.

**kde-servicemenus-cr2fits**
--------------

Plasma 5 Dolphin service menu script for cr2fits package.

FORMAT: Arch Linux PKGBUILD script.

**kde-servicemenus-dualiso**
--------------

Plasma 5 Dolphin service menu script for cr2hdr package.

FORMAT: Arch Linux PKGBUILD script.

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

**kde-servicemenus-unlockpdf**
--------------

Plasma 5 Dolphin service menu script for hacking and breaking PDF password protection. Allows you to edit read-only PDF files.

FORMAT: Arch Linux PKGBUILD script.

**kdegraphics-dreamdesktop**
--------------

Video background for Plasma 4/KDE4 desktop environment.

FORMAT: Arch Linux PKGBUILD script + patch file.

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

**playonlinux**
--------------

Patches for PlayOnLinux 4.2.10.

- 0001-remove-menuitems.patch = Remove Twitter, Facebook, Google+ menu items. Remove duplicate Run, Remove, Install menu items. Remove Donate menu item.

- 0002-add-shortcutitems.patch = Add an option to remove shortcuts from Desktop & .local/share/applications/ directory. While creating a shortcut, add it to both of these places instead of only Desktop. Create winexec bash script file for Wine, and link it to "Execute" field of each shortcut/.desktop file.

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

FORMAT: Arch Linux PKGBUILD script.

**qgifer**
--------------

Patch qgifer codebase for Qt5 & the newest giflib. NOTE: Qgifer is a deprecated/abandoned program.

Homepage:

[SourceForge.net - QGifer](https://sourceforge.net/projects/qgifer/)

FORMAT: Arch Linux PKGBUILD script + patch files.

**u3d**
--------------

Set of libraries to manipulate U3D-formatted data. IDTF to U3D converter.

FORMAT: Arch Linux PKGBUILD script + source archive.

**wine**
--------------

Patches for Wine.

- custompatch_glsl_shader.patch = GLSL shaders patch for Wine.

- custompatch_msi-add-dummyactionthreads.patch = Add MSI dummy actions since Wine lacks a proper implementation of MSI custom action server. See details [here](https://bugs.winehq.org/show_bug.cgi?id=18070)

Basically, this patch helps you installing many useful programs on Wine which would otherwise be impossible.

- custompatch_photoshop_getticks_input.c.patch = Photoshop brush patch for Wine. Details [here](https://bugs.winehq.org/show_bug.cgi?id=29871)

- custompatch_photoshop_keepfocus_message.c.patch = Patch for keeping window focus while using Camera Raw plugin.

- custompatch_photoshop_tooltip_win.c.patch = Patch for hovering Photoshop tooltip pop-ups.

FORMAT: Patch files.

**wine-launcher-creator**
--------------

A Python-based GUI for creating Wine application launchers/Desktop shortcuts.

FORMAT: Arch Linux PKGBUILD script + source archive.

**zsnes-netplay**
--------------

ZSnes Nintendo SNES emulator for Linux. Netplay version.

FORMAT: Arch Linux PKGBUILD script + source archive + patch files.
