part of 'luz_bloc.dart';

@immutable
sealed class LuzState {}

final class LuzApagada extends LuzState {}

final class LuzAcesa extends LuzState {}
