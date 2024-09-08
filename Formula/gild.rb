class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.5.32"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.32/gild_cli_v0.5.32_darwin_x64.tar.gz"
      sha256 "830f9ad5278d0f5bcf22628cf7a77d58f22244a3d5a7c3ecb58b38d0f26e8b07"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.5.32/gild_cli_v0.5.32_darwin_arm64.tar.gz"
      sha256 "b82bbf7fc22c690d08d8d8a298c17aee0abff31c2b94be2342802ab8f2cd224f"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.5.32/gild_cli_v0.5.32_linux_x64.tar.gz"
    sha256 "6a2f5ba932e302ea6137a8af70baa89a8033db14c6bdd4adfd7a5423f0189038"
  end

  def install
    bin.install "gild"
  end
end
