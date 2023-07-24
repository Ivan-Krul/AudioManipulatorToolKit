Audio Manipulator Tool Kit
==========================

Small tool kit for converting from video to audio, sending and operating between them.

Dependencies
------------

- [FFmpeg](https://ffmpeg.org/download.html).
Istall this and make changes in enviroument settings in Path, or put executable **ffmpeg.exe** in folder of scripts

- Execution policy.
Also need permision if it asks. Otherwise they're work

Given tool description
----------------------

- CleanFileEnviroument.ps1 - it's space cleaner after work with:
    - ConvertAndMerge.ps1 (it use it)
    - ConvertAudioToMp3.ps1
    - MergeTwoAudioFiles.ps1

- CommonStrings.ps1 - it's a script to get an average string for two strings (ConvertAndMerge.ps1 use it)

- ConvertAndMerge.ps1 - it's a bundle of different operations. It rename inputed **names without extension format**, convert them to mp3 format, merging and then cleaning up after work. In result it output a merged file with commin characters name what consist in two names in mp3 format. Sequence of calls looks like this:
    - `ConvertAndMerge.ps1 -> CommonStrings.ps1 -> ConvertAudioToMp3.ps1 -> MergeTwoAudioFiles.ps1 -> CleanFileEnviroument.ps1`

- ConvertAudioToMp3.ps1 - it's a convertor from anoter format to mp3 format. As input files it uses **file1** and **file2**

- ConvertVideoToMp3.ps1 - it's also a convertor from any video format to mp3 format. As input file it typable.

- MergeTwoAudioFiles.ps1 - it's a merger of **file1.mp3** and **file2.mp3**. It also ask for output filename.

- MoveToMusic.ps1 - it's a mover of all mp3 files to Music folder

- MoveToMusicSigned.ps1 - it's also a move of all mp3 files to Music/Signed folder

- ShowToolKit.ps1 - it's shows all tools, what are user-friendly

Future Implementations
----------------------

- Make more independend from extension format. For example reading 
- Expand functionality
