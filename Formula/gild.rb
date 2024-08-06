class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.19"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.19/gild_cli_v0.5.19_darwin_x64.tar.gz"
      sha256 "9cfa332f2679dc61f38e2c60fa8f3b356a8ca84d18b748d7ce5e8bc0ebb50a99"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.19/gild_cli_v0.5.19_darwin_arm64.tar.gz"
      sha256 "1320b07e0c5cb264a55ad18f380bd987c04f8d4c6bf207dffafd4b5b1d308129"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.19/gild_cli_v0.5.19_linux_x64.tar.gz"
    sha256 "bb3c525505425701efe808ccd5434cd860dca246a8e9e2dcc6d797644e468b08"
  end

  def install
    bin.install "gild"
  end
end
