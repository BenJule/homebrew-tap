cask "bambu-studio" do
  version "02.07.01.11790-bj.0"
  sha256 "777284c7cc7d4e63116c71e0bf40d33bdba1f8e4ae46baf2772d99fa4946e517"

  url "https://github.com/BenJule/BambuStudio/releases/download/v02.07.01.11790-bj.0/BambuStudio_macos-15_universal_V02.07.01.11790.dmg"
  name "BambuStudio"
  desc "Slicer for Bambu Lab 3D printers"
  homepage "https://github.com/BenJule/BambuStudio"

  depends_on macos: ">= :ventura"

  app "BambuStudio.app"

  zap trash: [
    "~/Library/Application Support/BambuStudio",
    "~/Library/Preferences/com.bambulab.bambu-studio.plist",
    "~/Library/Caches/BambuStudio",
  ]
end
