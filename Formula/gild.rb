class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.7.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.7.0/gild_cli_v0.7.0_darwin_x64.tar.gz"
      sha256 "7e7a7aec5f8c54448f425ae5941414e05318498b2708e2d3c8b5fb551de238cf"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.7.0/gild_cli_v0.7.0_darwin_arm64.tar.gz"
      sha256 "02b844bec90e11a3ff4cfa208abf9b2d0165d1c8e03bd76e8cb9fa050764b5b2"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.7.0/gild_cli_v0.7.0_linux_x64.tar.gz"
    sha256 "8f6c8f196c22f73623a65f60897204a18d6edaf921aed988e4b363d5b4df83ca"
  end

  def install
    bin.install "gild"
  end
end
