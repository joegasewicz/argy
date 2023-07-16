# Argy
Manages command line arguments

### Install
```
dart pub add argy
```

### Usage
```dart
void main(List<String> arguments) {
  var argy = Argy(arguments: arguments);
  argy.add("file", "the file to work on...");
  argy.add("dir", "the directory to look inside...");
  argy.helpMessage = "Welcome to my CLI tool!";
  argy.help();
}
```
Prints out the follow:
```
// Welcome to my CLI tool!
//
// Example usage:
// --file				the file to work on...
// --dir				the directory to look inside...
```
