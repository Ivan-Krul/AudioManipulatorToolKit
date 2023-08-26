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

- CompressAllVideos.ps1 - it's a compressor of all videos in the current folder with setted parameters like video bitrate, audio bitrate, frames per seconds,
resolution and sample rate. In result it returns in folder what allocated

- CompressVideo.ps1 - it's a compressor for a current video with setted parameters like video bitrate, audio bitrate, frames per seconds,
resolution and sample rate.
In result it returns in same folder with renaming "New " + name of setted file.

- CompressVideoQualityMajorly.ps1 - it's a compressor for a current video with very rude compression. It will compress and in result it will add file to 144p and with "(144p) " +name of setted file respectively.

- ConvertAndMerge.ps1 - it's a bundle of different operations. It rename inputed **names without extension format**, convert them to mp3 format, merging and then cleaning up after work. In result it output a merged file with commin characters name what consist in two names in mp3 format. Sequence of calls looks like this:
    - `ConvertAndMerge.ps1 -> CommonStrings.ps1 -> ConvertAudioToMp3.ps1 -> MergeTwoAudioFiles.ps1 -> CleanFileEnviroument.ps1`

- ConvertAudioToMp3.ps1 - it's a convertor from anoter format to mp3 format. As input files it uses **file1** and **file2**

- ConvertVideoToMp3.ps1 - it's also a convertor from any video format to mp3 format. As input file it typable.

- DeleteFildersHere.ps1 - it's a deleter of all folders what contains in current folder.

- DetectAllMp4.ps1 - it's a outputer of all mp4 files and output into terminal

- DetectAllMp4AndConvertToMp3.ps1 - it's a detector and convertor of all mp4 files into mp3 files. Sequence of calls looks like this:
  - `DetectAllMp4AndConvertToMp3.ps1 -> ConvertVideoToMp3.ps1`

- ExecuteMerging.ps1 - it's a merger of all frames and audios into different video dependantly from folder.

- MergeTwoAudioFiles.ps1 - it's a merger of **file1.mp3** and **file2.mp3**. It also ask for output filename.

- MoveToMusic.ps1 - it's a mover of all mp3 files to Music folder

- MoveToMusicSigned.ps1 - it's also a move of all mp3 files to Music/Signed folder

- MoveVideosFromFolderToMain.ps1 - it's a mover what moves all mp4 files into current folder

- MultiplexVideo.ps1 - it's a multiplexer, what disassemble video into frames and audio

- RenameAllFrames.ps1 - it's a renamer what helps to rename all frames by shifting into 0 frames to compatable for ffmpeg frames to merge

- RoutAllAudiosToFolders.ps1 - it's a router, what route all audios into folders based by name

- ShowToolKit.ps1 - it's shows all tools, what are user-friendly

Future Implementations
----------------------

- Make more independend from extension format. For example reading 
- Expand functionality
