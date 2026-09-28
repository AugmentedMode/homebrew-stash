cask "stash" do
  version "1.0.1"
  sha256 "c8fcf73dd7f05b09f90732d44a2ca3b63553e0442db2079e34d2ce902c4b593d"

  url "https://github.com/AugmentedMode/Stash/releases/download/v#{version}/Stash-#{version}-arm64.dmg"
  name "Stash"
  desc "Native clipboard manager with local history and reusable prompts"
  homepage "https://github.com/AugmentedMode/Stash"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Stash.app"

  caveats <<~EOS
    Stash is ad-hoc signed and is not notarized by Apple.
    If macOS blocks it, attempt to open Stash, then use:
      System Settings > Privacy & Security > Open Anyway
    Confirm only if you trust this release. See https://support.apple.com/102445

    Quick paste optionally requires Accessibility permission. After an update,
    you may need to remove and re-add Stash in Privacy & Security > Accessibility.
    Quit Stash before upgrading. Clipboard history and preferences are preserved.
  EOS
end
