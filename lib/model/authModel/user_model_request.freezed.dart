// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModelRequest _$UserModelRequestFromJson(Map<String, dynamic> json) {
  return _UserModelRequset.fromJson(json);
}

/// @nodoc
mixin _$UserModelRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelRequestCopyWith<UserModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelRequestCopyWith<$Res> {
  factory $UserModelRequestCopyWith(
          UserModelRequest value, $Res Function(UserModelRequest) then) =
      _$UserModelRequestCopyWithImpl<$Res, UserModelRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$UserModelRequestCopyWithImpl<$Res, $Val extends UserModelRequest>
    implements $UserModelRequestCopyWith<$Res> {
  _$UserModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelRequsetImplCopyWith<$Res>
    implements $UserModelRequestCopyWith<$Res> {
  factory _$$UserModelRequsetImplCopyWith(_$UserModelRequsetImpl value,
          $Res Function(_$UserModelRequsetImpl) then) =
      __$$UserModelRequsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$UserModelRequsetImplCopyWithImpl<$Res>
    extends _$UserModelRequestCopyWithImpl<$Res, _$UserModelRequsetImpl>
    implements _$$UserModelRequsetImplCopyWith<$Res> {
  __$$UserModelRequsetImplCopyWithImpl(_$UserModelRequsetImpl _value,
      $Res Function(_$UserModelRequsetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserModelRequsetImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelRequsetImpl implements _UserModelRequset {
  _$UserModelRequsetImpl(
      {@JsonKey(name: "email") this.email = "",
      @JsonKey(name: "password") this.password = ""});

  factory _$UserModelRequsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelRequsetImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'UserModelRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelRequsetImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelRequsetImplCopyWith<_$UserModelRequsetImpl> get copyWith =>
      __$$UserModelRequsetImplCopyWithImpl<_$UserModelRequsetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelRequsetImplToJson(
      this,
    );
  }
}

abstract class _UserModelRequset implements UserModelRequest {
  factory _UserModelRequset(
          {@JsonKey(name: "email") final String email,
          @JsonKey(name: "password") final String password}) =
      _$UserModelRequsetImpl;

  factory _UserModelRequset.fromJson(Map<String, dynamic> json) =
      _$UserModelRequsetImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserModelRequsetImplCopyWith<_$UserModelRequsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
