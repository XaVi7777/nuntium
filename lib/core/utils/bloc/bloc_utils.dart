import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocUtils {
  static T create<T extends Bloc<Object?, Object?>, E>(BuildContext context,
      {E? event}) {
    final bloc = GetIt.I.get<T>();
    if (event != null) {
      if (bloc is Bloc<E, Object?>) {
        bloc.add(event);
      } else {
        throw ArgumentError('Invalid event type for the provided BLoC');
      }
    }
    return bloc;
  }

  static BlocProvider<T>
      createBlocProvider<T extends Bloc<Object?, Object?>, E>({
    E? event,
  }) {
    return BlocProvider<T>(
      create: (context) => BlocUtils.create<T, E>(context, event: event),
    );
  }
}
