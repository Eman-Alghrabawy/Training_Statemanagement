import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filterbar_state.dart';

class FilterbarCubit extends Cubit<FilterbarState> {
  FilterbarCubit() : super(FilterbarInitial());
}
