# Flutter-Experiment

## Getting Started

## Installation

First time, setup project for development on Mac.

1. Download Flutter SDK
2. Open iTerm
```bash
open ~/.zshrc
```
3. Add code in find .zshrc -> and remove pwd to /Users/supagornsirimaleewattana
```bash 
export PATH="$PATH:/Users/supagornsirimaleewattana/flutter/bin"
```
4. Run flutter doctor
```bash
flutter doctor
```
5. Finish

## Set up the IOS simulator
- open iTerm
```bash
open -a Simulator
```

## Create and run a simple Flutter app
1. Create a new Flutter app
```bash
flutter create my_app
```
2. Enter this directory
```bash
cd my_app
```
3. To launch the app
```bash
flutter run
```
- Or Run in by VS Code 
1. Click Run
2. Click Start Debugging 

## Install the Flutter and Dart plugins in VS Code
1. Start VS Code.
2. Invoke View > Command Palette….
3. Type “install”, and select Extensions: Install Extensions.
4. Type “flutter” in the extensions search field, select Flutter in the list, and click Install. This also installs the required Dart plugin.


[Reference](https://docs.flutter.dev/get-started/install/macos)

# Knowledge

## How to use a custom font in a Flutter app
1. Add a font to your project
  - in assets/fonts/
2. Register the font
  - Open your pubspec.yaml file.
``` bash 
flutter:
  fonts:
    - family: DancingScript     
      fonts:
        - asset: assets/fonts/dancing_script.ttf
```
<br />
[Reference](https://suragch.medium.com/how-to-use-a-custom-font-in-a-flutter-app-911763c162f5)

<hr />

## How do I use hexadecimal color strings in Flutter
- we only need to convert the string #b74093 to an integer value
``` bash
const color = const Color(0xFFB74093);
```
<br />
[Reference](https://stackoverflow.com/a/50081214/17992107)

<hr />

## File Structure for Large Projects
1. Folder assets ->  Contains Folder images, icons, logos, fonts
2. Folder fucntions -> cloud function (API)
3. Folder lib 
  - 3.1. Folder modals -> Contains collection data
  - 3.2. Folder pages -> Contains many screen
  - 3.3. Folder services -> Contains firebase
  - 3.4. Folder utils -> Contains Function
  - 3.5. Folder widgets -> Contains widget for reuse widget
  - 3.6. File app.dart -> Navigation
  - 3.7. File theme.dart -> Contains Styles
<br />
[Reference](https://www.youtube.com/watch?v=FsK1H6KXf0c)

<hr />

## Navigate with named routes
```code
MaterialApp(
  title: 'Named Routes Demo',
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const FirstScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => const SecondScreen(),
  },
)
```
[Reference](https://docs.flutter.dev/cookbook/navigation/named-routes)

<hr />


[Reference Youtube](https://www.youtube.com/watch?v=3jGj-1-m_zA)
<br />

[Document Thai Languages](https://drive.google.com/file/d/1LdM8y8G8KOATq03vDsXvHaTCzJ8oCfTz/view)
<br />

[Web Convert Json to Dart](https://app.quicktype.io)
