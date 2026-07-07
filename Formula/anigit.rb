class Anigit < Formula
  desc "Git, but for your anime-watching history"
  homepage "https://github.com/TSSS-org/anigit"
  version "1.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.6/anigit-aarch64-apple-darwin.tar.gz"
      sha256 "96d5cd017c9e27b28e0de38be520f02178ae11118baf3973274b1ff362f7eb49"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.6/anigit-x86_64-apple-darwin.tar.gz"
      sha256 "e91cc07b4697f508f8e3b03364b206e69101f9a4aa997a0a8971a03363dbd598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.6/anigit-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cf52f77d5086744149a09b3bc60460a7f1f5c5e4377ceb3f7211cfd974beb32"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.6/anigit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d16fa4536c745f7319f403d5fb7d412a0f021fdb7eed78c680216a4a905f7dd"
    end
  end

  def install
    bin.install "anigit"
  end

  test do
    assert_match "anigit #{version}", shell_output("#{bin}/anigit --version")
  end
end
