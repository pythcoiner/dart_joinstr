build:
    flutter_rust_bridge_codegen generate

clean:
    rm -fRd lib/src/rust/api/joinstr.dart
    rm -fRd lib/src/rust/frb_generated.dart
    rm -fRd lib/src/rust/frb_generated.io.dart
    rm -fRd lib/src/rust/frb_generated.web.dart
    rm -fRd rust/src/frb_generated.rs
