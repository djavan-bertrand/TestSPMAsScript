# MacOS script built from a Swift Package used inside an iOS project

This repo is test to try to resolve a compile error while trying to run a script built from a Swift Package inside an iOS Xcode project.

The script is built an run from a `Run Script phase`:

```
cd Script/
swift run
```

The script is, and should be, targeting MacOSX.
However, when build during the iOS project build, an error is produced: `Unsupported architecture`, followed by multiple `name '__int64_t'`...

When targetting the iOS Simulator, there is only a warning: `using sysroot for 'iPhoneOS' but targeting 'MacOSX' [-Wincompatible-sysroot]`.

These errors/warnings happen in the Yams dependency. I don't know if it is something that can be fixed inside this lib, or do I have to pass some compile directives to the `swift run` instruction.

## How to test

Simply open the Xcode project, chose the target and build.
Be sure to delete the `Script/.debug` folder between each attempt.

To build for iphoneos, you'll probably need to change the bundle identifier and set your team.

