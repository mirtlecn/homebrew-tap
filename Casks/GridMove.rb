cask "gridmove" do
  version "1.6.4"
  sha256 "fdd484a7178d50d6e68496c12bfcbf454b90ade975e7443079f9053c17066e78"

  url "https://github.com/mirtlecn/GridMoveForMac/releases/download/v#{version}/GridMove.arm64.dmg",
      verified: "github.com/mirtlecn/GridMoveForMac/releases/download/"
  name "GridMove"
  desc "Move and snap windows into custom layouts"
  homepage "https://github.com/mirtlecn/GridMoveForMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "GridMove.app"

  zap trash: [
    "~/.config/GridMove",
  ]

  caveats do
    unsigned_accessibility
  end
end
