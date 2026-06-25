cask "bambu-studio" do
  version "02.07.01.11820-bj.0"
  sha256 "16845e79adcbee8e21c51307a2adfa8ec6ffc68adc77342af67bd3cbd292e89f"

  url "https://github.com/BenJule/BambuStudio/releases/download/v02.07.01.11820-bj.0/BambuStudio_macos-15_universal_V02.07.01.11820.dmg"
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
