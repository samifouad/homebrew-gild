class Gild < Formula
  desc "Infrastructure as code"
  homepage "https://gild.gg"
  version "v0.8.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.3/gild-cli_v0.8.3_darwin_x64.tar.gz"
      sha256 "c03eb661bfb3372ce89090b8174558df5acc8acaf7549e35304b1a33f376f589"
    elsif Hardware::CPU.arm?
      url "https://github.com/samifouad/gild-cli/releases/download/v0.8.3/gild-cli_v0.8.3_darwin_arm64.tar.gz"
      sha256 "398b536580e5aacdf158997f869407e3aa5e4477317e899d3683263369845461"
    end
  elsif OS.linux?
    url "https://github.com/samifouad/gild-cli/releases/download/v0.8.3/gild-cli_v0.8.3_linux_x64.tar.gz"
    sha256 "774ff8ceb389f901b0a733453e8d37d976f495cfa528659c42aa9ce36f9d3f62"
  end

  def install
    bin.install "gild"
  end
end
