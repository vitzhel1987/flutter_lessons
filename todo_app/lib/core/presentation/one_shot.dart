class OneShot<T> {
  T? _value;
  bool _wasRead = false;

  OneShot(this._value);

  T? consume() {
    if (_wasRead) {
      return null;
    }
    _wasRead = true;
    final value = _value;
    _value = null;
    return value;
  }

  bool get hasValue => !_wasRead && _value != null;

}