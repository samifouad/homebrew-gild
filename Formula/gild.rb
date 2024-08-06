class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.18"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.18/gild_cli_v0.5.18_darwin_x64.tar.gz"
      sha256 "5241fc3a8fd1237f9760165041e8ac97474cce58fa4254db0bbedf3cfaa7afa6"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.18/gild_cli_v0.5.18_darwin_arm64.tar.gz"
      sha256 "f62c6201c661fea4c032ec888af8a9828e63e656f4047a4043a77e251ad748e4"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.18/gild_cli_v0.5.18_linux_x64.tar.gz"
    sha256 "ec2e39ae09cd54c245a0e80b5ae47de4163c861f80f1e8564be5c061f13662d0"
  end

  def install
    bin.install "gild"
  end
end
