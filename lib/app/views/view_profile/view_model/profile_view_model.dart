import 'dart:async';

import 'package:edu4dev/app/app.dart';
import 'package:edu4dev/app/theme/dark/dark_theme_data.dart';
import 'package:edu4dev/app/theme/light/light_theme_data.dart';
import 'package:edu4dev/app/views/view_profile/view_model/profile_event.dart';
import 'package:edu4dev/app/views/view_profile/view_model/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileViewModel extends Bloc<ProfileEvent, ProfileState> {
  ProfileViewModel() : super(ProfileState()) {
    on<ProfileEvent>((event, emit) => _isDarkModeEnabled(event, emit));
  }
  FutureOr<void> _isDarkModeEnabled(
      ProfileEvent event, Emitter<ProfileState> emit) {
    emit(ProfileState(event.isDark));
  }
}

void isDarkMode(
  bool event,
  BuildContext context,
) {
  context.read<ProfileViewModel>().add(ProfileEvent(event));
  event ? App.setTheme(context, AppThemeDark.getTheme()): App.setTheme(context, AppThemeLight.getTheme());
}
