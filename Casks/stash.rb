cask "stash" do
  version "1.0.2"
  sha256 "408dd391a1a272e490ab664ab7a36a4376c4609f545764d17b0c34fa580be5b7"

  url "https://github.com/AugmentedMode/Stash/releases/download/v#{version}/Stash-#{version}-arm64.dmg"
  name "Stash"
  desc "Native clipboard manager with local history and reusable prompts"
  homepage "https://github.com/AugmentedMode/Stash"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Stash.app"

  caveats <<~EOS
    Quick paste optionally requires Accessibility permission.
    When upgrading from an ad-hoc signed version (before 1.0.2), you may need
    to remove and re-add Stash in Privacy & Security > Accessibility.
    Quit Stash before upgrading. Clipboard history and preferences are preserved.
  EOS
end
