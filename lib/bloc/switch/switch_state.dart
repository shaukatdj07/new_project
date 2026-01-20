

import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {

   double slider;

   SwitchState({this.slider = 1.0});


   SwitchState copyWith({double? slider}){
     return SwitchState(slider: slider ?? this.slider);
}

  @override
  List<Object?> get props => [slider];
}