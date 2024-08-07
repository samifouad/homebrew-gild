class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.31"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.31/gild_cli_v0.5.31_darwin_x64.tar.gz"
      sha256 "9cb23fe4e449b3d44111e0a7a3bcdb378f0dbc7c38da01b01eee22968d5c0f5f"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.31/gild_cli_v0.5.31_darwin_arm64.tar.gz"
      sha256 "b723088fb75d28cca6c4ea49ccd9acc9cef01566434a4dcd3bf09cb1ff7b57e1"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.31/gild_cli_v0.5.31_linux_x64.tar.gz"
    sha256 "969ef2297310cce949f70ec981b29bd410eee3ecb855d92618f9e839329bc8da"
  end

  def install
    bin.install "gild"
  end
end
