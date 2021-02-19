import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nav_pop_state.dart';

class NavPopCubit extends Cubit<DateTime> {
  NavPopCubit() : super(DateTime.now());

  void doNavPop(){
    emit(DateTime.now());
  }
}
