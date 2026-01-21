

import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {

   double slider;
   bool isOff;

   SwitchState({this.slider = 1.0, this.isOff= true});


   SwitchState copyWith({double? slider, bool? isOff}){
     return SwitchState(slider: slider ?? this.slider,
     isOff : isOff ?? this.isOff
     );
}

  @override
  List<Object?> get props => [slider, isOff];
}