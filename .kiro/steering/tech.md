# Tech Stack

## Language & Platform
- **Language**: Kotlin
- **Platform**: Android (minSdk 24, targetSdk 36, compileSdk 36)
- **Package**: `com.ccv.pda`

## Build System
- **Gradle** with Kotlin DSL (`build.gradle.kts`)
- Version catalog via `libs.versions.toml`
- Java 11 source/target compatibility

## UI Frameworks
- **Primary UI**: Traditional Android Views (XML layouts, `AppCompatActivity`, `RecyclerView`)
- **Compose**: Included as a dependency but only used for theme definitions (`ui/theme/`); not used in main screens
- All main screens use XML layouts in `app/src/main/res/layout/`

## Key Libraries
- `androidx.appcompat`, `androidx.constraintlayout`, `androidx.cardview`
- `androidx.recyclerview`, `androidx.swiperefreshlayout`
- `com.google.android.material` (Material Design components)
- `com.google.android.flexbox` (FlexboxLayout)
- `com.google.zxing:core` + `com.journeyapps:zxing-android-embedded` (barcode/QR scanning)
- Jetpack Compose BOM + Material3 (theme only)

## Data Storage
- `SharedPreferences` via `FakePdaSettingsStore` — wraps preferences with typed getters/setters

## Common Commands

```bash
# Build debug APK
./gradlew assembleDebug

# Build release APK
./gradlew assembleRelease

# Run unit tests
./gradlew test

# Run instrumented tests (requires connected device/emulator)
./gradlew connectedAndroidTest

# Clean build
./gradlew clean
```
