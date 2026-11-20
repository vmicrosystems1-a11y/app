// Flutter helper: call every second and on Firebase data changes.
// Pass /.info/serverTimeOffset and /irrigation/device/lastSeen values.
bool deviceOnline({required Object? lastSeen, required num serverTimeOffset}) {
  if (lastSeen is! num || lastSeen <= 0) return false;
  final age = DateTime.now().millisecondsSinceEpoch + serverTimeOffset - lastSeen;
  return age >= -5000 && age <= 45000;
}
