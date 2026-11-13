# Precached network image

[![pub package](https://img.shields.io/pub/v/precached_network_image.svg)](https://pub.dartlang.org/packages/precached_network_image)<a href="https://github.com/janlionly/flutter_precached_network_image"><img src="https://img.shields.io/github/stars/janlionly/flutter_precached_network_image.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>

Flutter library to load and cache network images to disk and support to precache images to memory in advance to avoid the flash screen caused by the delay time.

## Features

- ✅ **Multi-platform support**: Works on iOS, Android, and Web platforms
- ✅ **Advanced caching**: Dual-layer caching with memory and disk storage
- ✅ **Precaching**: Load images to memory in advance to prevent flickering
- ✅ **Web compatibility**: Uses localStorage for web platform caching
- ✅ **Flexible storage**: Automatic platform-specific storage selection
- ✅ **Error handling**: Comprehensive error handling and fallback support
- ✅ **Performance optimized**: Efficient image loading and caching strategies
- ✅ **Debug logging**: Opt-in logging powered by `dart:developer`

## Platform Support

| Platform | Cache Storage | Memory Precaching | Status |
|----------|---------------|------------------|---------|
| iOS      | File System   | ✅ Yes           | ✅ Supported |
| Android  | File System   | ✅ Yes           | ✅ Supported |
| Web      | localStorage  | ✅ Yes           | ✅ Supported |

## Usage

The PrecachedNetworkImage can be used directly.

```dart
PrecachedNetworkImage(
  url: 'https://picsum.photos/200',
  width: 200, 
  height: 200,
  precache: true, // default is false, true for next time loading from memory in advance.
  fit: BoxFit.fill,
  placeholder: (context, url) => const Icon(Icons.person),
  errorWidget: (context, url, error) {
    log("get image failed code: $error");
    return const Icon(Icons.error);
  },
),
```

When you want to precache images to memory to avoid the delay time, you can call PrecachedNetworkImageManager's precacheNetworkImages() which read the disk's files to memory like on the launch widget in advance.

```dart
@override
void initState() {
  super.initState();
  PrecachedNetworkImageManager.instance.precacheNetworkImages(isLog: true);
  // or toggle logging manually any time
  PrecachedNetworkImageManager.instance.setLog(true);
}
```

PrecachedNetworkImageManager handle about precache(memory) and cache(disk) all methods:

```dart
/// precache all urls(or the target param urls) to files in memory
/// usage:
///   you can call this method in advance(eg. on launch) to avoid the flash screen caused by the delay time
///   after set the parameter [precache] of PrecachedNetworkImage(..., precache: true) to true.
precacheNetworkImages({List<String> urls}); 

/// add the url which you want to precache next time
addPrecache({@required String url});

/// delete the url which you cancel to precache 
deletePrecache({@required String url});

/// delete the file of given url cache in memory and disk
deleteImageCache({@required String url});

/// clean all precache's files of given urls cache in memory and disk
cleanImageCache();

/// clean all urls precache
cleanPrecache();

/// clean all urls precache and file cache in memory and disk
cleanCaches();

/// toggle developer logging output
setLog(bool isLog);
```

## Logging

Logs are off by default to keep the library silent in production. Enable them either by calling
`PrecachedNetworkImageManager.instance.setLog(true)` or by passing `isLog: true` to
`precacheNetworkImages`. All logs go through `dart:developer`, so you can capture them with your
existing debugging tools without adding extra dependencies.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  precached_network_image: ^1.4.1
```

## Requirements

- Dart SDK: `>=2.19.0 <4.0.0`
- Flutter: `>=1.17.0`

## Author

Visit my github: [janlionly](https://github.com/janlionly)<br>
Contact with me by email: janlionly@gmail.com

## Contribute
I would love you to contribute to **PrecachedNetworkImage**

## License
**PrecachedNetworkImage** is available under the MIT license. See the [LICENSE](https://github.com/janlionly/flutter_precached_network_image/blob/master/LICENSE) file for more info.
