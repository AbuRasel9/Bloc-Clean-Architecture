// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) {
  return _MoviesModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesModel {
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
          MoviesModel value, $Res Function(MoviesModel) then) =
      _$MoviesModelCopyWithImpl<$Res, MoviesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pages") int pages,
      @JsonKey(name: "tv_shows") List<TvShows> tvShows});
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res, $Val extends MoviesModel>
    implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesModelImplCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$$MoviesModelImplCopyWith(
          _$MoviesModelImpl value, $Res Function(_$MoviesModelImpl) then) =
      __$$MoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pages") int pages,
      @JsonKey(name: "tv_shows") List<TvShows> tvShows});
}

/// @nodoc
class __$$MoviesModelImplCopyWithImpl<$Res>
    extends _$MoviesModelCopyWithImpl<$Res, _$MoviesModelImpl>
    implements _$$MoviesModelImplCopyWith<$Res> {
  __$$MoviesModelImplCopyWithImpl(
      _$MoviesModelImpl _value, $Res Function(_$MoviesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_$MoviesModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesModelImpl implements _MoviesModel {
  _$MoviesModelImpl(
      {@JsonKey(name: "total") this.total = 0,
      @JsonKey(name: "page") this.page = 0,
      @JsonKey(name: "pages") this.pages = 0,
      @JsonKey(name: "tv_shows") final List<TvShows> tvShows = const []})
      : _tvShows = tvShows;

  factory _$MoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesModelImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "pages")
  final int pages;
  final List<TvShows> _tvShows;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  @override
  String toString() {
    return 'MoviesModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      __$$MoviesModelImplCopyWithImpl<_$MoviesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesModel implements MoviesModel {
  factory _MoviesModel(
          {@JsonKey(name: "total") final int total,
          @JsonKey(name: "page") final int page,
          @JsonKey(name: "pages") final int pages,
          @JsonKey(name: "tv_shows") final List<TvShows> tvShows}) =
      _$MoviesModelImpl;

  factory _MoviesModel.fromJson(Map<String, dynamic> json) =
      _$MoviesModelImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "pages")
  int get pages;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShows;
  @override
  @JsonKey(ignore: true)
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return _TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "the-flash")
  String get theFlash => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "image_thumbnail_path")
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "the-flash") String theFlash,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String image});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? theFlash = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theFlash: null == theFlash
          ? _value.theFlash
          : theFlash // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowsImplCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$$TvShowsImplCopyWith(
          _$TvShowsImpl value, $Res Function(_$TvShowsImpl) then) =
      __$$TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "the-flash") String theFlash,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String image});
}

/// @nodoc
class __$$TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$TvShowsImpl>
    implements _$$TvShowsImplCopyWith<$Res> {
  __$$TvShowsImplCopyWithImpl(
      _$TvShowsImpl _value, $Res Function(_$TvShowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? theFlash = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? image = null,
  }) {
    return _then(_$TvShowsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theFlash: null == theFlash
          ? _value.theFlash
          : theFlash // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsImpl implements _TvShows {
  _$TvShowsImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "name") this.name = "",
      @JsonKey(name: "the-flash") this.theFlash = "",
      @JsonKey(name: "start_date") this.startDate = "",
      @JsonKey(name: "end_date") this.endDate = "",
      @JsonKey(name: "country") this.country = "",
      @JsonKey(name: "network") this.network = "",
      @JsonKey(name: "status") this.status = "",
      @JsonKey(name: "image_thumbnail_path") this.image = ""});

  factory _$TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "the-flash")
  final String theFlash;
  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  @JsonKey(name: "end_date")
  final String endDate;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "network")
  final String network;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  final String image;

  @override
  String toString() {
    return 'TvShows(id: $id, name: $name, theFlash: $theFlash, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.theFlash, theFlash) ||
                other.theFlash == theFlash) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, theFlash, startDate,
      endDate, country, network, status, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      __$$TvShowsImplCopyWithImpl<_$TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsImplToJson(
      this,
    );
  }
}

abstract class _TvShows implements TvShows {
  factory _TvShows(
          {@JsonKey(name: "id") final int id,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "the-flash") final String theFlash,
          @JsonKey(name: "start_date") final String startDate,
          @JsonKey(name: "end_date") final String endDate,
          @JsonKey(name: "country") final String country,
          @JsonKey(name: "network") final String network,
          @JsonKey(name: "status") final String status,
          @JsonKey(name: "image_thumbnail_path") final String image}) =
      _$TvShowsImpl;

  factory _TvShows.fromJson(Map<String, dynamic> json) = _$TvShowsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "the-flash")
  String get theFlash;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  @JsonKey(name: "end_date")
  String get endDate;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "network")
  String get network;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
