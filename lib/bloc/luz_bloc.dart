import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'luz_event.dart';
part 'luz_state.dart';

class LuzBloc extends Bloc<LuzEvent, LuzState> {
  LuzBloc() : super(LuzApagada()) {
    on<AcenderLuz>(_acenderLuz);
    on<ApagarLuz>(_apagarLuz);
  }

  void _acenderLuz(AcenderLuz event, Emitter<LuzState> emit) {
    emit(LuzAcesa());
  }

  void _apagarLuz(ApagarLuz event, Emitter<LuzState> emit) {
    emit(LuzApagada());
  }
}
