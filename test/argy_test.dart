import 'package:argy/argy.dart';
import 'package:test/test.dart';

void main() {
  group('Argy', () {

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

  });
}
