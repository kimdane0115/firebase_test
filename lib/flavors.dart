enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'firebaseTest(dev)';
      case Flavor.staging:
        return 'firebaseTest(staging)';
      case Flavor.prod:
        return 'firebaseTest';
      default:
        return 'title';
    }
  }

}
