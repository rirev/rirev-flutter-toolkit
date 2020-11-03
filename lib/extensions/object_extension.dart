extension ObjectExtension on Object {
  bool blank() {
    final bool isNull = this == null;
    final bool isFalse = this == false;
    final bool isBlank = '' == this;
    final bool isEmpty = (this is List && (this as List).isEmpty);

    return isNull || isFalse || isBlank || isEmpty;
  }

  bool here() {
    return blank() == false;
  }

}
