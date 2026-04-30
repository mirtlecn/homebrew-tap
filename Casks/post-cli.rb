cask "post-cli" do
  version "1.4.1"

  on_intel do
    sha256 "b5bc96e4fcb0b57c97a1ef41995c951de2d9a278e7c22ba6c891b1a94815883a"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  on_arm do
    sha256 "d07edb923a59c01bad364ac3f77c7d283f60583b90a08c74887221159ad043ed"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  name "post-cli"
  desc "Command-line client for post"
  homepage "https://github.com/mirtlecn/post-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  binary "post"

  zap trash: [
    "~/.config/post",
  ]
end
