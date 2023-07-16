import 'package:argy/argy.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final argy = Argy(arguments: ['--file']);

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(argy.arguments[0], '--file');
    });
  });
}
