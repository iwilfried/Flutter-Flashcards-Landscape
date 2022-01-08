# flutter_flashcards_landscape

A simple Flash cards app

## Preview

[Download the release APK to try out on your android phone](https://install.appcenter.ms/users/momenamiin/apps/flashcard_landscape/distribution_groups/public) 

or by scaning the following qr code 

![frame (3)](https://user-images.githubusercontent.com/18642838/147135863-b7bb1933-9873-40b7-aed7-bcbb5e7ca044.png)

## Documentation  
- [Install Flutter](https://docs.flutter.dev/get-started/install)  
- [Flutter documentation](https://docs.flutter.dev/)  
- [Development wiki](https://github.com/flutter/flutter/wiki)  
- [Contributing to Flutter](https://github.com/flutter/flutter/blob/master/CONTRIBUTING.md)  
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For announcements about new releases and breaking changes, follow the flutter-announce@googlegroups.com mailing list or see the [breaking changes](https://docs.flutter.dev/release/breaking-changes) page.

## Flutter Releases
https://github.com/flutter/flutter/wiki/Hotfixes-to-the-Stable-Channel
<br>
## About Flutter  
We think Flutter will help you create beautiful, fast apps, with a productive, extensible and open development model.  
## Beautiful user experiences  
We want to enable designers to deliver their full creative vision without being forced to water it down due to limitations of the underlying framework. Flutter's [layered architecture](https://docs.flutter.dev/resources/inside-flutter) gives you control over every pixel on the screen and its powerful compositing capabilities let you overlay and animate graphics, video, text, and controls without limitation. Flutter includes a full [set of widgets](https://docs.flutter.dev/development/ui/widgets) that deliver pixel-perfect experiences on both iOS and Android.  

![image](https://user-images.githubusercontent.com/1112242/147511756-b39e49d4-1e28-4bbb-9cee-b87d1e7bc111.png)

## Fast results
Flutter is fast. It's powered by the same hardware-accelerated 2D graphics library that underpins Chrome and Android: [Skia](https://skia.org/). Flutter code is powered by the world-class [Dart platform](https://dart.dev/), which enables compilation to 32-bit and 64-bit ARM machine code for iOS and Android, as well as JavaScript for the web and Intel x64 for desktop devices.  
<br>
<br>
# Getting Started  
**Flutter** is **Google's SDK** for crafting beautiful, fast user experiences for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is **free and open source.**

## Get the Flutter SDK  
*https://docs.flutter.dev/get-started/install*    

![smaller](https://user-images.githubusercontent.com/1112242/147614790-21e8ecf7-d140-41a0-bacb-11ad8e248e5f.png)



 
> **https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.1-stable.zip**  
> Download this zip-file and unpack it. Move the unpacked folder to the place you want it.     

Or visit the [Flutter Repository](https://github.com/flutter/flutter) and clone the source with the command
> $ git clone https://github.com/flutter/flutter.git -b stable  
 
*Downloading the Flutter SDK also downloads the compatible version of Dart, but if you've downloaded the Dart SDK separately, make sure that the Flutter version of dart is first in your path, as the two versions might not be compatible.* 
<br>

## Update your Path
If you wish to run Flutter commands in the regular Windows console, take these steps to add Flutter to the PATH environment variable:  
 From the Start search bar, enter **‘env’** and select **Edit environment variables** for your account.  
Under **User variables** check if there is an entry called Path:  
- If the entry exists, append the full path to **flutter\bin** using ; as a separator from existing values.
- If the entry doesn’t exist, create a new user variable named Path with the full path to **flutter\bin** as its value.  
You have to close and reopen any existing console windows for these changes to take effect.

## Check your Installation
Open your terminal/console and type 

> $ **flutter doctor**      

![image](https://user-images.githubusercontent.com/1112242/147492571-ca7eba1e-a390-4ff8-bb2c-48a2f29afa8f.png)  

<br>
<hr>  
<br>
<br>  

## Online Development Flutter   

[Online Development Flutter](https://flutlab.io/editor/ae805556-45a6-4b5a-9c65-fe433d1f0481) 

![Flutlab](https://user-images.githubusercontent.com/1112242/147615200-49856368-e84e-43f3-a53f-769a6fe17d61.png)


## CodeLab Part 1  
[CodeLab Part 1](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1#0)  

<br>  


## Flutter Commands - Cheat Sheet  

### Flutter Cheat Sheet  

Hier sind die wichtigsten Flutter Commands gelistet mit einer kurzen Beschreibung dazu.
Flutter Commands kannst du entweder im Terminal von deinem Rechner ausführen oder im Terminal in VS-Code.
Sollen die Commands was mit deinem Projekt machen so hilft es im Projekt Ordner zu stehen.


### Flutter Help:

> $ flutter -h

Zeigt dir alle commands mit Beschreibung nochmal im Terminal an.


### Flutter Version:

> $ flutter --version

Zeigt dir deine Installierte Flutter version an.



### Flutter Channel:

$ flutter channel

Zeigt dir in welchen Channel (Branch) du dich befindest - Standart ist channel stable. Wenn du neue features ausprobieren willst kannst du auch in den Beta channel wechseln.



### Flutter Doctor:

> $ flutter doctor

Gibt dir die Information aus, wie es um deine Entwicklungsumgebung steht.

### Flutter Upgrade:

> $ flutter upgrade

Damit updatest du auf die neuste Flutter version.



### Flutter Downgrade:

> $ flutter downgrade <version> (example: $ flutter downgrade v2.3.2)

Damit kannst du auf eine bestimmte Version downgraden.



### Neues Projekt erstellen:

> $ flutter create <app name> (example: $ flutter create "myapp")

Erstellt dir ein neues flutter Projekt mit der standard Counter-App.



### Flutter Emulator:

> $ flutter emulator

Listet dir alle verfügbaren devices.



### Flutter Emulator launch:

> $ flutter emulator --launch <emulator_name> (example $ flutter emulator --launch myPixel)

Startet einen bestimmten emulator (Virtual device).

### Flutter Run:

> $ flutter run

Startet deine app auf einem virtuellen device (falls vorhanden & gestartet) im debug modus.

### Flutter Release:

> $ flutter run --release

Startet deine app auf einem virtuellen device (falls vorhanden & gestartet) im release modus. Installiert also eine ganze APK auf dem handy.



### Flutter Clean:

> $ flutter clean

Entfernt die beim builden entstandenen Files aus dem Projekt ( macht sauber ). Kann manchmal bei komischen verhalten helfen. Man muss jedoch oft danach wieder ein $ flutter pub get ausführen.

### Flutter pub get:

> $ flutter pub get

Lädt die dependencys im Projekt herunter.




### Commands für den Debug Modus:
Diese Commands helfen euch wenn ihr die App aus VS-Code im debug modus (flutter run) mit dem Terminal gestartet habt.



### Großes R:

Startet die app auf den Emulator neu mit den Code Änderungen.


### Kleines r:

Hot reload: Lädt Code Änderungen life.



### Q:

Schließt die app (quitt). Stoppt debugging.
