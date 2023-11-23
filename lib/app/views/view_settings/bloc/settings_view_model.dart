import 'dart:async';

import 'package:edu4dev/app/views/view_settings/bloc/settings_event.dart';
import 'package:edu4dev/app/views/view_settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsViewModel extends Bloc<SettingsEvent, SettingsState> {
  SettingsViewModel() : super(SettingsState()) {
    on<SettingsEvent>((event, emit) => _isNotificationEnabled(event, emit));
  }
  FutureOr<void> _isNotificationEnabled(
      SettingsEvent event, Emitter<SettingsState> emit) {
    emit(SettingsState(event.isNotification));
  }
}

void isNotification(bool event, BuildContext context) {
  context.read<SettingsViewModel>().add(SettingsEvent(event));
  event ? false : true;
}
