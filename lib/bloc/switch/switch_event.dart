

import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable{

const SwitchEvent();

}


class SliderEvent extends SwitchEvent{
  double slider;
  SliderEvent({required this.slider});


  @override
  List<Object> get props => [slider,];
}

class OnOrOffNotification extends SwitchEvent {
 bool isOff = true;
  OnOrOffNotification({required this.isOff});

  @override
  List<Object> get props => [isOff];

}
