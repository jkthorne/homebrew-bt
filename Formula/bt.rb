class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.5.tar.gz"
  sha256 "a1642b4d0e7cafe2f1178b52f414ec5e49418fba9fc244bed5e41e70c9498521"
  license "MIT"
  version "0.5"
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
