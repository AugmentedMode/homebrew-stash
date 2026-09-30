cask "stash" do
  version "1.0.6"
  sha256 "1df8e40663a8c1fd82433551e382daedf9b7047c8cdd4fad67dc8ee7dbeaba4b"

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
