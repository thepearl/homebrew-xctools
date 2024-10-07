class Xctools < Formula
  desc "A utility of Xcode-related tasks for iOS developers."
  homepage "https://github.com/thepearl/XCTools"
  url "https://github.com/thepearl/XCTools/archive/refs/tags/0.0.2-beta.tar.gz"
  sha256 "559b07fc6ce68cd97ccfc78710a4a158aae4951eac8bbf0bddc08db8327e4eb1"
  license "GPL-3.0-only"

  depends_on :xcode => ["13.0", :build]
  depends_on :macos => :catalina

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/XCTools"
  end

  test do
    system "#{bin}/XCTools", "--version"
  end
end
