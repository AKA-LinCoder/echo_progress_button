# echo_progress_button



**echo_progress_button** is a free and open source (MIT license) Material Flutter Button that supports variety of buttons style demands. It is designed to be easy to use and customizable. fork from [flutter_progress_button](https://github.com/jiangyang5157/flutter_progress_button) 

flutter3 ready


## Get started

### **Depend on it**

Add this to your package's pubspec.yaml file:

```yaml
echo_progress_button: 
```

### **Install it**

You can install packages from the command line:

```
$ flutter pub get
```

Alternatively, your editor might support flutter pub get.

### **Import it**

Now in your Dart code, you can use:

```dart
import 'package:echo_progress_button/echo_progress_button.dart';

```

## How to use

Add `ProgressButton` to your widget tree:

```dart
ProgressButton(
    defaultWidget: const Text('I am a button'),
    progressWidget: const CircularProgressIndicator(),
    width: 196,
    height: 40,
    onPressed: () async {
        int score = await Future.delayed(
            const Duration(milliseconds: 3000), () => 42);
        // After [onPressed], it will trigger animation running backwards, from end to beginning
        return () {
        // Optional returns is returning a VoidCallback that will be called
        // after the animation is stopped at the beginning.
        // A best practice would be to do time-consuming task in [onPressed],
        // and do page navigation in the returned VoidCallback.
        // So that user won't missed out the reverse animation.
        };
    },
),
```

More parameters:
```dart
ProgressButton({
    Key key,
    this.defaultWidget,
    this.progressWidget,
    this.onPressed,
    this.type = ProgressButtonType.Raised,
    this.color,
    this.width = double.infinity,
    this.height = 40.0,
    this.borderRadius = 2.0,
    this.animate = true,
}) : super(key: key);
```

Three types supported:
```dart
enum ProgressButtonType {
  elevated,
  text,
  outlined,
}
```

## Fork Source
Fork from Source code and example of this library can be found in git:

```
$ git clone https://github.com/jiangyang5157/flutter_progress_button.git
```
