plugins {
    alias(libs.plugins.jetbrains.kotlin.android)
    alias(libs.plugins.android.library)n}

android {
    namespace = "so.prelude.android.sdk"
    compileSdk = 34

    defaultConfig {
        minSdk = 26
    }

    buildTypes {
        release {
            isMinifyEnabled = true
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.workmanager)
    implementation(libs.androidx.workmanager.ktx)
    implementation(libs.okhttp)
    implementation(libs.prelude.core.sdk)
}

// BEGIN - Publication configuration
mavenPublishing {
    coordinates("so.prelude.android", "sdk", "0.1.0")

    publishToMavenCentral(com.vanniktech.maven.publish.SonatypeHost.CENTRAL_PORTAL)
    signAllPublications()

    pom {
        name.set("Prelude Android SDK")
        description.set("Prelude Android SDK.")
        inceptionYear.set("2024")
        url.set("https://github.com/prelude-so/android-sdk/")
        licenses {
            license {
                name.set("The Apache License, Version 2.0")
                url.set("http://www.apache.org/licenses/LICENSE-2.0.txt")
                distribution.set("http://www.apache.org/licenses/LICENSE-2.0.txt")
            }
        }
        developers {
            developer {
                id.set("prelude-so")
                name.set("Prelude")
                url.set("https://github.com/prelude-so/")
            }
        }
        scm {
            url.set("https://github.com/prelude-so/android-sdk")
            connection.set("scm:git:git://github.com/prelude-so/android-sdk.git")
            developerConnection.set("scm:git:ssh://git@github.com/prelude-so/android-sdk.git")
        }
    }
}
// END - Publication configuration
plugins {
    alias(libs.plugins.jetbrains.kotlin.android)
    alias(libs.plugins.android.library)n}

android {
    namespace = "so.prelude.android.sdk"
    compileSdk = 34

    defaultConfig {
        minSdk = 26
    }

    buildTypes {
        release {
            isMinifyEnabled = true
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.workmanager)
    implementation(libs.androidx.workmanager.ktx)
    implementation(libs.okhttp)
    implementation(libs.prelude.core.sdk)
}

