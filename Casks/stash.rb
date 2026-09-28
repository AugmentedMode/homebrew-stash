cask "stash" do
  version "1.0"
  sha256 "6c19c818494869b315b97683c6990651d5465759d7ebdb69c80b391a2460a7e0"

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
