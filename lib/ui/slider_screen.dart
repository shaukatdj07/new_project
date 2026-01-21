import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text('Notification'),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen:(previous, current) => previous.isOff != current.isOff,
                builder: (context, state) {
                  return Switch(value: state.isOff, onChanged: (value) {
                    context.read<SwitchBloc>().add(OnOrOffNotification(isOff: state.isOff));
                  });
                },
              )
            ],
          ),
          SizedBox(height: 30),
          BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen:(previous, current) => previous.slider != current.slider,
              builder: (context, state) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(state.slider)
                  ),
                );
              }),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen:(previous, current) => previous.slider != current.slider,
            builder: (context, state) {
              return Slider(value: state.slider, onChanged: (value) {
                context.read<SwitchBloc>().add(SliderEvent(slider: value));
              });
            },
          )
        ],
      ),
    );
  }
}
