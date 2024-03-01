// class used to store basic configurations

class AppConfig {
  final bool shouldShowDebugMenu;
  final bool loggingEnabled;
  final bool isAutomationRun;
  final String lastCommit;
  final bool allowMockedLocation;

  AppConfig({
    this.shouldShowDebugMenu = true,
    this.loggingEnabled = true,
    this.isAutomationRun = false,
    this.lastCommit = 'debug',
    this.allowMockedLocation = true,
  });
}
