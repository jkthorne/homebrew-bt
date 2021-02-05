class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.4.tar.gz"
  sha256 "4feabbfd233bcdcb596201ce92208bb335028b9a568361f67efc9b955258c8f7"
  license "MIT"
  version "0.4"
  depends_on "crystal"

  bottle :unneeded
  
  def install
    system "shards build"
    bin.install "bin/bt"
  end

  test do
    system "{bin}/bt", "-v"
  end
end
