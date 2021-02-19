class Bt < Formula
  desc "Tools for interacting with the Braintree API"
  homepage "https://github.com/wontruefree/braintree"
  url "https://github.com/wontruefree/braintree/archive/v0.5.3.tar.gz"
  sha256 "fa11451ed0e10a838c7f58fc2f2f51b74a8a2907c456a432c82bc70d4841f886"
  license "MIT"
  version "0.5.3"
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
