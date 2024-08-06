class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.17"
  license "Apache2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.17/gild_cli_v0.5.17_darwin_x64.tar.gz"
      sha256 "3b55f8d63575293e6fa324e00bb0ff6b7c1b852962dd164975f4d9d09cfd6507"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.17/gild_cli_v0.5.17_darwin_arm64.tar.gz"
      sha256 "20ba3d4235e36671441151b012d833934a0c23731de85fda6d80ea40bb60f56a"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.17/gild_cli_v0.5.17_linux_x64.tar.gz"
    sha256 "f80c46b09c7bad3dbc817138752d2f9cf55d0697cdcd5efc93ba3136c9dbcff1"
  end

  def install
    bin.install "gild"
  end
end
