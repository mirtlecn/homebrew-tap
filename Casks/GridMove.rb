cask "gridmove" do
  version "1.6.3"
  sha256 "8a24afb4889d4e55041532b7608658ef316e9890da39c055dc281b931e304787"

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
