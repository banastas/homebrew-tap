cask "flatline" do
  version "1.1.0"
  sha256 "37346669a4adfcb24aca3f0b1bf14b2abd40fb2d57bbcd3c1ebcf022c7114ec7"

  url "https://flatline.floor1point2.com/releases/flatline-#{version}.dmg"
  name "flatline"
  desc "Menu bar monitor for CPU, memory and network"
  homepage "https://flatline.floor1point2.com/"

  livecheck do
    url "https://flatline.floor1point2.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "flatline.app"

  uninstall quit: "as.banast.flatline"

  zap trash: [
    "~/Library/Caches/as.banast.flatline",
    "~/Library/HTTPStorages/as.banast.flatline",
    "~/Library/Preferences/as.banast.flatline.plist",
  ]
end
