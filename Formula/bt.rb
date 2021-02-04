class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.3.tar.gz"
  sha256 "bdf92bc5c01b4d5e3b7e176c55fadd761dbe08363a01a184e6ab67cf04174e0d"
  license "MIT"
  version "0.3"
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
