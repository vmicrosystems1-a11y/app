# Drip Irrigation 2

Upload the contents of this directory (including hidden .github) to the root of your GitHub repository on main. Enable Actions, select Build Drip Irrigation 2 APK, and Run workflow. Download drip-irrigation-2-apk from the successful run. The workflow generates Android files automatically; no local Flutter installation is required.

Firebase project: drip-f280e. Android package: com.vmicrosystems.drip_irrigation2. Firebase is initialized using explicit Dart options. Retain your existing Firebase Authentication users and security rules. The included firebase/database.json is an optional initial database, not a rules file: back up existing data before importing; importing can overwrite schedules.

Use ESP32 V2 firmware which writes irrigation/device/lastSeen (epoch milliseconds) and valveActual (GPIO output state). App indicates offline after 45 seconds without heartbeat or when Firebase connection is lost. Output feedback is not physical valve position. Five minute timer and watchdog are firmware responsibilities. Test with water supply disconnected.

Build uses generated Flutter signing configuration, not a production signing key. If installation over an older APK fails due to signature mismatch, uninstall the old APK first or configure your original signing key. No APK was built locally; GitHub Actions performs analysis and APK signature/package verification.
