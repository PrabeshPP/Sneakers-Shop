// Mocks generated by Mockito 5.1.0 from annotations
// in nepseapp/test/respository/icons_services_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:nepseapp/model/brandsIcons.dart' as _i4;
import 'package:nepseapp/repository/icons_services.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [IconsServices].
///
/// See the documentation for Mockito's code generation for more information.
class MockIconsServices extends _i1.Mock implements _i2.IconsServices {
  MockIconsServices() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.BrandsIcon>> getItem() => (super.noSuchMethod(
          Invocation.method(#getItem, []),
          returnValue: Future<List<_i4.BrandsIcon>>.value(<_i4.BrandsIcon>[]))
      as _i3.Future<List<_i4.BrandsIcon>>);
}
