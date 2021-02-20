class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.6.0.tar.gz"
  sha256 "611af9504c9e7f46a44a03e02953404c1d5a32395f86148fb756889d550dca4f"
  license "MIT"
  version "0.6.0"
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
