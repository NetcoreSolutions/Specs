# Netcore iOS Specs

Private CocoaPods spec repository for Netcore's iOS SDKs.

This repo hosts the `.podspec` files for Netcore SDK releases. Pointing your Podfile
at this repo lets CocoaPods resolve and install these SDK versions just like any
other pod.

---

## ⚠️ Important: CocoaPods Trunk is becoming read-only

The CocoaPods team has announced that **CocoaPods Trunk (the public spec repository)
will become permanently read-only on December 2, 2026.** After this date, no new
pods or new pod versions can be published to Trunk.

**What this means for you:**

- **Existing integrations keep working.** Netcore SDK versions already published to
  CocoaPods Trunk will remain available, and your current builds will not break.
- **New Netcore SDK versions will be published here.** Any Netcore iOS SDK release
  after December 2, 2026 will be available only through this spec repository, not
  through CocoaPods Trunk.
- **Action required to receive updates.** To continue getting new Netcore SDK
  versions via CocoaPods, add this repository as a source in your `Podfile`
  (see below). Without it, `pod install` will not be able to find newer versions.

---

## Integrating a Netcore pod in your app

### Step 1: Declare the spec sources

At the top of your `Podfile`, list this repo along with the public CocoaPods CDN.
Keeping the public source is important; otherwise CocoaPods won't find any
non-Netcore dependencies.

```ruby
source 'https://github.com/NetcoreSolutions/Specs.git'
source 'https://cdn.cocoapods.org/'
```

### Step 2: Add the pod

```ruby
target 'YourApp' do
  use_frameworks!
  pod 'Smartech-iOS-SDK', '<version>'
end
```

### Step 3: Install

```bash
pod install --repo-update
```

The `--repo-update` flag makes sure your local copy of this spec repo is refreshed,
so newly published versions are picked up.

---

## Troubleshooting

- **"Unable to find a specification for …" or "None of your spec sources contain a
  spec satisfying the dependency"**: make sure this repo's `source` line is in your
  Podfile, then run `pod install --repo-update`. Versions released after
  December 2, 2026 exist only in this repo.
- **Other pods stop resolving**: make sure the public CocoaPods source is still
  listed alongside this one.

---
