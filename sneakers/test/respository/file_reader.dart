import 'dart:io';

String reader(String name) =>
    File("test/fixtures/icons.json").readAsStringSync();

