# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gild < Formula
  desc "infrastructure as code"
  homepage "https://gild.gg"
  url "https://github.com/samifouad/gild-cli/releases/download/v0.2.1/gild.tar.gz"
  sha256 "52ae8f572bf5b3aeb608a7e1b9f0da1c1c8e921e8caca7a6123b7b0e0940c3ff"
  license "Apache2.0"
  version "0.2.1"

  # depends_on "cmake" => :build

  def install
    bin.install "gild"
  end
end
