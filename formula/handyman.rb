require "formula"

class Handyman < Formula
  desc "Handyman CLI"
  homepage "https://github.com/jefflinse/handyman"
  url "https://github.com/jefflinse/handyman/releases/download/v0.2.1/handyman-darwin-amd64-v0.2.1.tar.gz"
  sha256 "e9e45dc0fd80b529c3d725efead21305b280c3bdf6c2fb69881d63dc00d41812"
  head "https://github.com/jefflinse/handyman.git"

  def install
    bin.install "hm"
  end

  test do
    assert_match "handyman CLI version v0.2.1", shell_output("#{bin}/hm version", 0)
  end
end
