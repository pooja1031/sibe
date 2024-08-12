import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/application/presentation/routes/routes.dart';

part 'initial_state.dart';
part 'initial_cubit.freezed.dart';

@injectable
class InitialCubit extends Cubit<InitialState> {
  FlutterSecureStorage secureStorage;
  InitialCubit(this.secureStorage) : super(const InitialState.initial());

  Future<String> nextScreenRoute() async {
    final value = await secureStorage.read(key: 'token');
    if (value == null) {
      return Routes.signInPage;
    } else {
      return Routes.mainpage;
    }
  }
}
