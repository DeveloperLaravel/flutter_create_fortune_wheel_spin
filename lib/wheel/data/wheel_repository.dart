abstract class WheelRepository {
  Future<int> spin(int length);
  Future<void> saveLastResult(int index);
  int? getLastResult();
}
