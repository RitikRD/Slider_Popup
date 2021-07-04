import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slider_popup/slider_popup.dart';

void main() {
  const MethodChannel channel = MethodChannel('slider_popup');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
