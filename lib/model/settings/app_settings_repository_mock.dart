import 'package:flutter/material.dart';

import 'app_settings.dart';
import 'app_settings_repository.dart';

class AppSettingsRepositoryMock implements AppSettingsRepository {
  AppSettings _cachedSettings = AppSettings(themeColor: ThemeColor.blue);

    @override
  Future<AppSettings> load() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _cachedSettings;
  }

  @override
  Future<void> save(AppSettings settings) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _cachedSettings = settings;
  }
}
