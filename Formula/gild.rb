class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.8.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.4/gild-cli_v0.8.4_darwin-x64.tar.gz"
      sha256 "1ee8ceae3b43c1c7004fdff1b22945cb22031fb5d37a8c879dded0a44c4448f1"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.4/gild-cli_v0.8.4_darwin-arm64.tar.gz"
      sha256 "002efc517c6d3eb78ee6e83c27dbd3cedb8a79729d0437672df29f5cd29006f9"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.8.4/gild-cli_v0.8.4_linux-x64.tar.gz"
    sha256 "20a6ad90942c11d867d1a2b9b17ac07c8e45879a3edc5a4f71a728bcb218691a"
  end

  def install
    bin.install "gild"
  end
end
