part of 'luz_bloc.dart';

@immutable
sealed class LuzEvent {}

class AcenderLuz extends LuzEvent {}

class ApagarLuz extends LuzEvent {}
