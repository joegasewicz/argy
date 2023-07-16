import 'dart:io';

import 'package:argy/argy.dart';
import 'package:test/test.dart';

void main() {
  group('Argy', ()  {

    setUp(() {
      // Additional setup goes here.
    });

    test('Has arguments', () {
      final argy = Argy(arguments: ['--file']);
      expect(argy.arguments[0], '--file');
    });

    test('Stored arguments is an empty list', () {
      final argy = Argy(arguments: ['--file']);
      expect(argy.storedArgs.length, 0);
    });

    test('parse method should create a list of mapped values with length of 2', () {
      final argy = Argy(arguments: ['--file', 'dir1', '--watch', 'dir2']);
      argy.parse();
      expect(argy.parsedArgs.length, 2);
    });

    test('Calling help method should print out expected text', () {
      var argy = Argy(arguments: []);
      argy.add("file", "the file to work on...");
      argy.add("dir", "the directory to look inside...");
      argy.helpMessage = "Welcome to my CLI tool!";
      argy.help();
      final expected = """Welcome to my CLI tool!

Example usage:
	--file				the file to work on...
	--dir				the directory to look inside...\n""";
      expect(argy.out, expected);
    });

  });
}
