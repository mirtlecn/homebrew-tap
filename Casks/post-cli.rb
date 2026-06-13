cask "post-cli" do
  version "1.5.1"

  on_intel do
    sha256 "6cddf3fd7413579c023e7e1ead3ad65c2b3a454c5be47756c06985a0261f73b9"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  on_arm do
    sha256 "a18701317035b0631fd85c1c281989004d4a65687fe2056b4b3231ca73c86ae8"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  name "post-cli"
  desc "Command-line client for Post"
  homepage "https://github.com/mirtlecn/post-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  binary "post"

  zap trash: [
    "~/.config/post",
  ]
end
