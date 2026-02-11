// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {

 Coord? get coord; List<Weather>? get weather; String? get base; Main? get main; int? get visibility; Wind? get wind; Clouds? get clouds; int? get dt; Sys? get sys; int? get timezone; int? get id; String? get name; int? get cod;
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherModelCopyWith<WeatherModel> get copyWith => _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherModel&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(weather),base,main,visibility,wind,clouds,dt,sys,timezone,id,name,cod);

@override
String toString() {
  return 'WeatherModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res>  {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) = _$WeatherModelCopyWithImpl;
@useResult
$Res call({
 Coord? coord, List<Weather>? weather, String? base, Main? main, int? visibility, Wind? wind, Clouds? clouds, int? dt, Sys? sys, int? timezone, int? id, String? name, int? cod
});


$CoordCopyWith<$Res>? get coord;$MainCopyWith<$Res>? get main;$WindCopyWith<$Res>? get wind;$CloudsCopyWith<$Res>? get clouds;$SysCopyWith<$Res>? get sys;

}
/// @nodoc
class _$WeatherModelCopyWithImpl<$Res>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coord = freezed,Object? weather = freezed,Object? base = freezed,Object? main = freezed,Object? visibility = freezed,Object? wind = freezed,Object? clouds = freezed,Object? dt = freezed,Object? sys = freezed,Object? timezone = freezed,Object? id = freezed,Object? name = freezed,Object? cod = freezed,}) {
  return _then(_self.copyWith(
coord: freezed == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coord?,weather: freezed == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as Clouds?,dt: freezed == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int?,sys: freezed == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cod: freezed == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordCopyWith<$Res>? get coord {
    if (_self.coord == null) {
    return null;
  }

  return $CoordCopyWith<$Res>(_self.coord!, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res>? get main {
    if (_self.main == null) {
    return null;
  }

  return $MainCopyWith<$Res>(_self.main!, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $WindCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsCopyWith<$Res>? get clouds {
    if (_self.clouds == null) {
    return null;
  }

  return $CloudsCopyWith<$Res>(_self.clouds!, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res>? get sys {
    if (_self.sys == null) {
    return null;
  }

  return $SysCopyWith<$Res>(_self.sys!, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherModel].
extension WeatherModelPatterns on WeatherModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherModel value)  $default,){
final _that = this;
switch (_that) {
case _WeatherModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Coord? coord,  List<Weather>? weather,  String? base,  Main? main,  int? visibility,  Wind? wind,  Clouds? clouds,  int? dt,  Sys? sys,  int? timezone,  int? id,  String? name,  int? cod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.clouds,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Coord? coord,  List<Weather>? weather,  String? base,  Main? main,  int? visibility,  Wind? wind,  Clouds? clouds,  int? dt,  Sys? sys,  int? timezone,  int? id,  String? name,  int? cod)  $default,) {final _that = this;
switch (_that) {
case _WeatherModel():
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.clouds,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Coord? coord,  List<Weather>? weather,  String? base,  Main? main,  int? visibility,  Wind? wind,  Clouds? clouds,  int? dt,  Sys? sys,  int? timezone,  int? id,  String? name,  int? cod)?  $default,) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.clouds,_that.dt,_that.sys,_that.timezone,_that.id,_that.name,_that.cod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherModel implements WeatherModel {
  const _WeatherModel({required this.coord, required final  List<Weather>? weather, required this.base, required this.main, required this.visibility, required this.wind, required this.clouds, required this.dt, required this.sys, required this.timezone, required this.id, required this.name, required this.cod}): _weather = weather;
  factory _WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

@override final  Coord? coord;
 final  List<Weather>? _weather;
@override List<Weather>? get weather {
  final value = _weather;
  if (value == null) return null;
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? base;
@override final  Main? main;
@override final  int? visibility;
@override final  Wind? wind;
@override final  Clouds? clouds;
@override final  int? dt;
@override final  Sys? sys;
@override final  int? timezone;
@override final  int? id;
@override final  String? name;
@override final  int? cod;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherModelCopyWith<_WeatherModel> get copyWith => __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherModel&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(_weather),base,main,visibility,wind,clouds,dt,sys,timezone,id,name,cod);

@override
String toString() {
  return 'WeatherModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) = __$WeatherModelCopyWithImpl;
@override @useResult
$Res call({
 Coord? coord, List<Weather>? weather, String? base, Main? main, int? visibility, Wind? wind, Clouds? clouds, int? dt, Sys? sys, int? timezone, int? id, String? name, int? cod
});


@override $CoordCopyWith<$Res>? get coord;@override $MainCopyWith<$Res>? get main;@override $WindCopyWith<$Res>? get wind;@override $CloudsCopyWith<$Res>? get clouds;@override $SysCopyWith<$Res>? get sys;

}
/// @nodoc
class __$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coord = freezed,Object? weather = freezed,Object? base = freezed,Object? main = freezed,Object? visibility = freezed,Object? wind = freezed,Object? clouds = freezed,Object? dt = freezed,Object? sys = freezed,Object? timezone = freezed,Object? id = freezed,Object? name = freezed,Object? cod = freezed,}) {
  return _then(_WeatherModel(
coord: freezed == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coord?,weather: freezed == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as Main?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as Clouds?,dt: freezed == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int?,sys: freezed == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cod: freezed == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordCopyWith<$Res>? get coord {
    if (_self.coord == null) {
    return null;
  }

  return $CoordCopyWith<$Res>(_self.coord!, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainCopyWith<$Res>? get main {
    if (_self.main == null) {
    return null;
  }

  return $MainCopyWith<$Res>(_self.main!, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $WindCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsCopyWith<$Res>? get clouds {
    if (_self.clouds == null) {
    return null;
  }

  return $CloudsCopyWith<$Res>(_self.clouds!, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res>? get sys {
    if (_self.sys == null) {
    return null;
  }

  return $SysCopyWith<$Res>(_self.sys!, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// @nodoc
mixin _$Clouds {

 int? get all;
/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudsCopyWith<Clouds> get copyWith => _$CloudsCopyWithImpl<Clouds>(this as Clouds, _$identity);

  /// Serializes this Clouds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Clouds&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'Clouds(all: $all)';
}


}

/// @nodoc
abstract mixin class $CloudsCopyWith<$Res>  {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) _then) = _$CloudsCopyWithImpl;
@useResult
$Res call({
 int? all
});




}
/// @nodoc
class _$CloudsCopyWithImpl<$Res>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._self, this._then);

  final Clouds _self;
  final $Res Function(Clouds) _then;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? all = freezed,}) {
  return _then(_self.copyWith(
all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Clouds].
extension CloudsPatterns on Clouds {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Clouds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Clouds value)  $default,){
final _that = this;
switch (_that) {
case _Clouds():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Clouds value)?  $default,){
final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? all)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that.all);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? all)  $default,) {final _that = this;
switch (_that) {
case _Clouds():
return $default(_that.all);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? all)?  $default,) {final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that.all);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Clouds implements Clouds {
  const _Clouds({required this.all});
  factory _Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

@override final  int? all;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudsCopyWith<_Clouds> get copyWith => __$CloudsCopyWithImpl<_Clouds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Clouds&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'Clouds(all: $all)';
}


}

/// @nodoc
abstract mixin class _$CloudsCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$CloudsCopyWith(_Clouds value, $Res Function(_Clouds) _then) = __$CloudsCopyWithImpl;
@override @useResult
$Res call({
 int? all
});




}
/// @nodoc
class __$CloudsCopyWithImpl<$Res>
    implements _$CloudsCopyWith<$Res> {
  __$CloudsCopyWithImpl(this._self, this._then);

  final _Clouds _self;
  final $Res Function(_Clouds) _then;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? all = freezed,}) {
  return _then(_Clouds(
all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Coord {

 double? get lon; double? get lat;
/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordCopyWith<Coord> get copyWith => _$CoordCopyWithImpl<Coord>(this as Coord, _$identity);

  /// Serializes this Coord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coord&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString() {
  return 'Coord(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class $CoordCopyWith<$Res>  {
  factory $CoordCopyWith(Coord value, $Res Function(Coord) _then) = _$CoordCopyWithImpl;
@useResult
$Res call({
 double? lon, double? lat
});




}
/// @nodoc
class _$CoordCopyWithImpl<$Res>
    implements $CoordCopyWith<$Res> {
  _$CoordCopyWithImpl(this._self, this._then);

  final Coord _self;
  final $Res Function(Coord) _then;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lon = freezed,Object? lat = freezed,}) {
  return _then(_self.copyWith(
lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Coord].
extension CoordPatterns on Coord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coord value)  $default,){
final _that = this;
switch (_that) {
case _Coord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coord value)?  $default,){
final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? lon,  double? lat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? lon,  double? lat)  $default,) {final _that = this;
switch (_that) {
case _Coord():
return $default(_that.lon,_that.lat);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? lon,  double? lat)?  $default,) {final _that = this;
switch (_that) {
case _Coord() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coord implements Coord {
  const _Coord({required this.lon, required this.lat});
  factory _Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);

@override final  double? lon;
@override final  double? lat;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordCopyWith<_Coord> get copyWith => __$CoordCopyWithImpl<_Coord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coord&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString() {
  return 'Coord(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class _$CoordCopyWith<$Res> implements $CoordCopyWith<$Res> {
  factory _$CoordCopyWith(_Coord value, $Res Function(_Coord) _then) = __$CoordCopyWithImpl;
@override @useResult
$Res call({
 double? lon, double? lat
});




}
/// @nodoc
class __$CoordCopyWithImpl<$Res>
    implements _$CoordCopyWith<$Res> {
  __$CoordCopyWithImpl(this._self, this._then);

  final _Coord _self;
  final $Res Function(_Coord) _then;

/// Create a copy of Coord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lon = freezed,Object? lat = freezed,}) {
  return _then(_Coord(
lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Main {

 double? get temp;@JsonKey(name: 'feels_like') double? get feelsLike;@JsonKey(name: 'temp_min') double? get tempMin;@JsonKey(name: 'temp_max') double? get tempMax; int? get pressure; int? get humidity;@JsonKey(name: 'sea_level') int? get seaLevel;@JsonKey(name: 'grnd_level') int? get grndLevel;
/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainCopyWith<Main> get copyWith => _$MainCopyWithImpl<Main>(this as Main, _$identity);

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.grndLevel, grndLevel) || other.grndLevel == grndLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,seaLevel,grndLevel);

@override
String toString() {
  return 'Main(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
}


}

/// @nodoc
abstract mixin class $MainCopyWith<$Res>  {
  factory $MainCopyWith(Main value, $Res Function(Main) _then) = _$MainCopyWithImpl;
@useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'sea_level') int? seaLevel,@JsonKey(name: 'grnd_level') int? grndLevel
});




}
/// @nodoc
class _$MainCopyWithImpl<$Res>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._self, this._then);

  final Main _self;
  final $Res Function(Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? seaLevel = freezed,Object? grndLevel = freezed,}) {
  return _then(_self.copyWith(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,grndLevel: freezed == grndLevel ? _self.grndLevel : grndLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Main].
extension MainPatterns on Main {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Main value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Main value)  $default,){
final _that = this;
switch (_that) {
case _Main():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Main value)?  $default,){
final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)  $default,) {final _that = this;
switch (_that) {
case _Main():
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)?  $default,) {final _that = this;
switch (_that) {
case _Main() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Main implements Main {
  const _Main({required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, @JsonKey(name: 'temp_min') required this.tempMin, @JsonKey(name: 'temp_max') required this.tempMax, required this.pressure, required this.humidity, @JsonKey(name: 'sea_level') required this.seaLevel, @JsonKey(name: 'grnd_level') required this.grndLevel});
  factory _Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

@override final  double? temp;
@override@JsonKey(name: 'feels_like') final  double? feelsLike;
@override@JsonKey(name: 'temp_min') final  double? tempMin;
@override@JsonKey(name: 'temp_max') final  double? tempMax;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'sea_level') final  int? seaLevel;
@override@JsonKey(name: 'grnd_level') final  int? grndLevel;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainCopyWith<_Main> get copyWith => __$MainCopyWithImpl<_Main>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Main&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.grndLevel, grndLevel) || other.grndLevel == grndLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,seaLevel,grndLevel);

@override
String toString() {
  return 'Main(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
}


}

/// @nodoc
abstract mixin class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) _then) = __$MainCopyWithImpl;
@override @useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'sea_level') int? seaLevel,@JsonKey(name: 'grnd_level') int? grndLevel
});




}
/// @nodoc
class __$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(this._self, this._then);

  final _Main _self;
  final $Res Function(_Main) _then;

/// Create a copy of Main
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? seaLevel = freezed,Object? grndLevel = freezed,}) {
  return _then(_Main(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,grndLevel: freezed == grndLevel ? _self.grndLevel : grndLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Sys {

 int? get type; int? get id; String? get country; int? get sunrise; int? get sunset;
/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SysCopyWith<Sys> get copyWith => _$SysCopyWithImpl<Sys>(this as Sys, _$identity);

  /// Serializes this Sys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sys&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $SysCopyWith<$Res>  {
  factory $SysCopyWith(Sys value, $Res Function(Sys) _then) = _$SysCopyWithImpl;
@useResult
$Res call({
 int? type, int? id, String? country, int? sunrise, int? sunset
});




}
/// @nodoc
class _$SysCopyWithImpl<$Res>
    implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._self, this._then);

  final Sys _self;
  final $Res Function(Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? id = freezed,Object? country = freezed,Object? sunrise = freezed,Object? sunset = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,sunrise: freezed == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int?,sunset: freezed == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sys].
extension SysPatterns on Sys {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sys value)  $default,){
final _that = this;
switch (_that) {
case _Sys():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sys value)?  $default,){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? type,  int? id,  String? country,  int? sunrise,  int? sunset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? type,  int? id,  String? country,  int? sunrise,  int? sunset)  $default,) {final _that = this;
switch (_that) {
case _Sys():
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? type,  int? id,  String? country,  int? sunrise,  int? sunset)?  $default,) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sys implements Sys {
  const _Sys({required this.type, required this.id, required this.country, required this.sunrise, required this.sunset});
  factory _Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

@override final  int? type;
@override final  int? id;
@override final  String? country;
@override final  int? sunrise;
@override final  int? sunset;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SysCopyWith<_Sys> get copyWith => __$SysCopyWithImpl<_Sys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sys&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$SysCopyWith(_Sys value, $Res Function(_Sys) _then) = __$SysCopyWithImpl;
@override @useResult
$Res call({
 int? type, int? id, String? country, int? sunrise, int? sunset
});




}
/// @nodoc
class __$SysCopyWithImpl<$Res>
    implements _$SysCopyWith<$Res> {
  __$SysCopyWithImpl(this._self, this._then);

  final _Sys _self;
  final $Res Function(_Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? id = freezed,Object? country = freezed,Object? sunrise = freezed,Object? sunset = freezed,}) {
  return _then(_Sys(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,sunrise: freezed == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as int?,sunset: freezed == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Weather {

 int? get id; String? get main; String? get description; String? get icon;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 int? id, String? main, String? description, String? icon
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? main = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Weather].
extension WeatherPatterns on Weather {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Weather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Weather value)  $default,){
final _that = this;
switch (_that) {
case _Weather():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Weather value)?  $default,){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? main,  String? description,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? main,  String? description,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _Weather():
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? main,  String? description,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Weather implements Weather {
  const _Weather({required this.id, required this.main, required this.description, required this.icon});
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  int? id;
@override final  String? main;
@override final  String? description;
@override final  String? icon;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? main, String? description, String? icon
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? main = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_Weather(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Wind {

 double? get speed; int? get deg; double? get gust;
/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindCopyWith<Wind> get copyWith => _$WindCopyWithImpl<Wind>(this as Wind, _$identity);

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class $WindCopyWith<$Res>  {
  factory $WindCopyWith(Wind value, $Res Function(Wind) _then) = _$WindCopyWithImpl;
@useResult
$Res call({
 double? speed, int? deg, double? gust
});




}
/// @nodoc
class _$WindCopyWithImpl<$Res>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._self, this._then);

  final Wind _self;
  final $Res Function(Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = freezed,Object? deg = freezed,Object? gust = freezed,}) {
  return _then(_self.copyWith(
speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,deg: freezed == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int?,gust: freezed == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Wind].
extension WindPatterns on Wind {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Wind value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Wind value)  $default,){
final _that = this;
switch (_that) {
case _Wind():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Wind value)?  $default,){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? speed,  int? deg,  double? gust)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? speed,  int? deg,  double? gust)  $default,) {final _that = this;
switch (_that) {
case _Wind():
return $default(_that.speed,_that.deg,_that.gust);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? speed,  int? deg,  double? gust)?  $default,) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Wind implements Wind {
  const _Wind({required this.speed, required this.deg, required this.gust});
  factory _Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

@override final  double? speed;
@override final  int? deg;
@override final  double? gust;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindCopyWith<_Wind> get copyWith => __$WindCopyWithImpl<_Wind>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) _then) = __$WindCopyWithImpl;
@override @useResult
$Res call({
 double? speed, int? deg, double? gust
});




}
/// @nodoc
class __$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(this._self, this._then);

  final _Wind _self;
  final $Res Function(_Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = freezed,Object? deg = freezed,Object? gust = freezed,}) {
  return _then(_Wind(
speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,deg: freezed == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int?,gust: freezed == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
