part of ccompile.ccompile;

class DartUtils {
  static String getSdkFolder() {
    var path = DartSDK.path;
    if (path != null) {
      if (path.endsWith('\\') || path.endsWith('/')) {
        path = path.substring(0, path.length - 1);
      }
    }

    return path;
  }

  static int getVmBits() => SysInfo.userSpaceBitness;
}
