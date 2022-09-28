# Mobile Application

Notes and exercises from mobile application course at NTNU

## Usefull commands

### Flutter doctor

Checks and verifies all tool need / that can be used with flutter

```
flutter doctor
```

### Create new application

Creates a new app with a basic template

```
flutter create name_of_app
```

### Run flutter app

Runs the application. If a simulator is open the app is automatically opened
in that simulator. If not you can chose to open the app in a browser like chrome or edge

```
flutter run
```

If the main file is not called main, use: (needs to contain the main()-method, as this is the entrypoint)

```
flutter run -t lib/filename.dart
```

If you have multiple siumlators you can specify which simulator you want to open
the app in with the `-d` flag

```
flutter run -d name/id_of_simulator
```

### Flutter packages

Gets all the packages necessary for the project. _npm install_

```
flutter packages get
```

### Open simulator on Mac

Opens an iphone simulator. _Not 100% sure, but think xcode has to be installed for this to work_

```
open -a Simulator
```
