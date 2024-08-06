class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.20"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.20/gild_cli_v0.5.20_darwin_x64.tar.gz"
      sha256 "d7225bc182d800ce4d014b851aa31a0fd17b3497aba803e8c15ba441143ce4e7"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.20/gild_cli_v0.5.20_darwin_arm64.tar.gz"
      sha256 "dbf70d1a8a252d1f0c9aabda9803cb47e178a6c23281648c5a370acde33e789d"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.20/gild_cli_v0.5.20_linux_x64.tar.gz"
    sha256 "994a1a2af9c3e2bd33cec76b6a3cfe18e94175fc67639349156dc97ea6ce17e9"
  end

  def install
    bin.install "gild"
  end
end
