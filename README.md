# Stash for Homebrew

The maintainer's Homebrew tap for [Stash](https://github.com/AugmentedMode/Stash),
a native macOS clipboard manager. Requires Apple silicon and macOS 14+.

## Install

```sh
brew tap augmentedmode/stash
brew install --cask augmentedmode/stash/stash
```

The cask downloads the GitHub Release DMG and verifies its SHA-256 checksum.
No compiler or Apple Developer membership is needed to install it.

Official releases from 1.0.2 onward are **Developer ID signed and notarized by Apple**.
Open Stash from Applications and confirm the normal downloaded-app prompt.

Quick paste optionally needs Accessibility permission. When upgrading from an
older ad-hoc signed release, you may need to remove and re-add Stash in
Privacy & Security → Accessibility.

## Update

Quit Stash, then run:

```sh
brew update
brew upgrade --cask augmentedmode/stash/stash
```

## Uninstall

```sh
brew uninstall --cask augmentedmode/stash/stash
```

Uninstalling leaves your history, prompts, and preferences in place. This tap
intentionally has no `zap` stanza that could delete your clipboard data.

## Maintenance

Publish the new app release first. Update the version and checksum in
`Casks/stash.rb`, run `brew style` and `brew audit --cask`, and verify a download.
See the app's [release guide](https://github.com/AugmentedMode/Stash/blob/main/docs/RELEASE.md).

The tap and Stash's original source are GPL-3.0-only; see [LICENSE](LICENSE).
Third-party artwork notices are included in the app and its source repository.
