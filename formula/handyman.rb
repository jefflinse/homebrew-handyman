require "formula"

class Handyman < Formula
  desc "Handyman CLI"
  homepage "https://github.com/jefflinse/handyman"
  url "https://github.com/jefflinse/handyman/releases/download/v0.3.0/handyman-darwin-amd64-v0.3.0.tar.gz"
  sha256 "15eccfa6576328ec11dbc761d4c73132129938ef0d8f4f6a4ea01c513084dff5"
  head "https://github.com/jefflinse/handyman.git"

  def install
    bin.install "hm"
  end

  test do
    assert_match "handyman CLI version v0.3.0", shell_output("#{bin}/hm version", 0)
  end
end
