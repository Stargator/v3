import 'dart:async';

import '../lib/futures.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockFutureService extends Mock implements FutureService {}

void main() {
  FutureService service;

  setUp(() {
    service = MockFutureService();
  });

  test('Get \'A\' via a Future', () async {
    when(service.upperCaseString('a')).thenAnswer((_) => Future.value('A'));
  });


  test('Wait for \'B\' via a Future', () async {
    when(await service.upperCaseString('b')).thenReturn('B');
  });
}