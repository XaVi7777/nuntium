import 'package:bloc/bloc.dart';

import 'package:nuntium/arch/sr_bloc/sr_mixin.dart';

abstract class SrBloc<Event, State, SR> extends Bloc<Event, State>
    with SingleResultMixin<Event, State, SR> {
  // ignore: use_super_parameters
  SrBloc(State state) : super(state);
}
