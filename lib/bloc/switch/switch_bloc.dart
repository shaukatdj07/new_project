

import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {

  SwitchBloc():super(SwitchState()){
    on<SliderEvent>(_slider);
  }

  void _slider(SliderEvent events, Emitter<SwitchState> emit){
    emit(state.copyWith(slider:  events.slider));
  }
}