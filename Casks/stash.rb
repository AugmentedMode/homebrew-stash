cask "stash" do
  version "1.0.8"
  sha256 "880770909face9e5465a0f061b6093b394dfc56c63abd4c3c75c393def65c2cf"

  url "https://github.com/AugmentedMode/Stash/releases/download/v#{version}/Stash-#{version}-arm64.dmg"
  name "Stash"
  desc "Native clipboard manager with local history and reusable prompts"
  homepage "https://github.com/AugmentedMode/Stash"

  auto_updates true
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
