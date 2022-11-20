import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:button_count/counter_event.dart';

class CounterBloc {
  int counterV = 0;

  final counterStateController = StreamController<int>();
  StreamSink<int> get inCounter => counterStateController.sink;

  Stream<int> get counter => counterStateController.stream;

  final counterEventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get counterEventSink => counterEventController.sink;

  CounterBloc() {
    counterEventController.stream.listen((mapEventToState));
  }

  void mapEventToState(CounterEvent event) {
    if (event is IncrementEvent) {
      counterV++;
    } else {
      counterV--;
    }


    inCounter.add(counterV);
  }

  void dispose() {
    counterStateController.close();
    counterEventController.close();
  }
}