class Xctools < Formula
  desc "A utility of Xcode-related tasks for iOS developers."
  homepage "https://github.com/thepearl/XCTools"
  url "https://github.com/thepearl/XCTools/archive/refs/tags/0.0.1-beta.tar.gz"
  sha256 "39917ae3cd503311f62b59b2741da9e9f6f622636f728645517c671924405716d54c"
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
