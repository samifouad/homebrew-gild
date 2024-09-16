class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.8.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.1/gild_cli_v0.8.1_darwin_x64.tar.gz"
      sha256 "db6808dd6a798002a93758ea0e11321695e99c47f4487d1eb0a37b964012d7f9"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.1/gild_cli_v0.8.1_darwin_arm64.tar.gz"
      sha256 "9ec7ce0d8fa149b268d61946a1a7d949b7eb99a0e5c54dfb8e286d39ed5639f7"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.8.1/gild_cli_v0.8.1_linux_x64.tar.gz"
    sha256 "5be59dc72aa8ae0bf68bafea233a56fa561195e3903046fc6d33aa8d53f8851e"
  end

  def install
    bin.install "gild"
  end
end
