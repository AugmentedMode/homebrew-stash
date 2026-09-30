cask "stash" do
  version "1.0.5"
  sha256 "6321aba996f296e8acf122cf8de03fed8cb259a5b4b71652710389d4d1503498"

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
