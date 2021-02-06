class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.5.2.tar.gz"
  sha256 "7b3a7c68bae4fb4262817942b5184d5158e30f4426092cafbfc47c8faf9cf1b2"
  license "MIT"
  version "0.5.2"
  depends_on "crystal"

  bottle :unneeded
  
  def install
    system "shards build --release"
    bin.install "bin/bt"
  end

  test do
    system "{bin}/bt", "-v"
  end
end
