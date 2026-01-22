import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/counter/counter_event.dart';
import 'package:bloc_app/bloc/counter/counter_state.dart';

  class CounterBloc  extends Bloc<CounterEvent, CounterState>{
  CounterBloc():super(CounterState()){
    on<IncrementEvent>(_addEvent);
    on<ResetCounter>(_resetCounter);
    on<DecrementCounter>(_decrementCounter);
  }
  
  
  void _addEvent(IncrementEvent event, Emitter<CounterState> states){
    emit(state.copyWith(count: state.count+1));
  }
  void _resetCounter(ResetCounter event, Emitter<CounterState> states){
    emit(state.copyWith(count:0));
  }

  void _decrementCounter(DecrementCounter event, Emitter<CounterState> states){
    emit(state.copyWith(count: state.count-1));
  }

}

