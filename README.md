# libcec - Windows builds

> [!IMPORTANT]  
> These are unofficial builds. For official builds visit Pulse-Eight website.
> Site: <http://libcec.pulse-eight.com/Downloads>

This repository contains an action that automatically compiles [libcec](https://github.com/Pulse-Eight/libcec) for the following configurations:

- Windows x86 - Debug
- Windows x86 - Release
- Windows amd64 - Debug
- Windows amd64 - Release

Both, dynamic link libraries (DLL) and static libs are compiled.

## Why?

Building from source requires a few components installed on the host system, including a Visual Studio installation.
If you just want to link against `libcec` on windows, let's say with Rust or Mingw, a simple prebuilt library + header files will do just fine. 

## How does it work?

A Github workflow pipelines is used for building the library, whenever a new tag is pushed. The tag needs to match the one on the upstream repo: https://github.com/Pulse-Eight/libcec.


## Disclaimer

libcec is a software by Pulse-Eight.
This repository is in no way endorsed by or affiliated with Pulse-Eight Limited.
