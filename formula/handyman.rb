require "formula"

class Handyman < Formula
  desc "Handyman CLI"
  homepage "https://github.com/jefflinse/handyman"
  url "https://github.com/jefflinse/handyman/releases/download/v0.2.0/handyman-darwin-amd64-v0.2.0.tar.gz"
  sha256 "26820cabffb9a594982d47e8653d3b6cb7585dd14b468dd93bfd94b528f2f3c0"
  head "https://github.com/jefflinse/handyman.git"

  def install
    bin.install "hm"
  end

  test do
    assert_match "handyman CLI version v0.2.0", shell_output("#{bin}/hm version", 0)
  end
end
