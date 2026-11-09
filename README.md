# RYUMA — GitHub build starter

Upload the project files to the repository, then open Actions → Build RYUMA → Run workflow. When the run succeeds, download the `RYUMA-Portrait-Fix` artifact.

Required project source: `Tweak.xm`. Add the original, approved `Tweak.xm` from **RYUMA – iOS 11 Compatibility Fix** to the repository root without editing it.

Before building, replace `REPLACE.WITH.YOUR.APP.BUNDLE.ID` in `RYUMA.plist` with the bundle identifier of an app you own or are authorized to modify.

This is source code, not a compiled dylib. GitHub Actions builds it using a macOS runner and Theos. ESign injection compatibility and signing depend on the target IPA and ESign version; compatibility is not guaranteed for every iOS version/device.

The Cloudflare Worker validates the submitted key. Keep any actual secrets in Cloudflare Worker environment variables, never in this repository.

Only inject into an app you own or have permission to modify. Check the IPA's bundle ID before setting the filter.
