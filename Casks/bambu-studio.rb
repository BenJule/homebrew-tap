cask "bambu-studio" do
  version "02.07.00.55"
  sha256 "35ebe15788c07324ee43775816acc28295db5eeeb473a266dd623dc1f456c6c8"

  url "https://github.com/BenJule/BambuStudio/releases/download/v#{version}/BambuStudio_Mac_arm64_V#{version}.zip"
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
