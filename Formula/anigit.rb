class Anigit < Formula
  desc "Git, but for your anime-watching history"
  homepage "https://github.com/TSSS-org/anigit"
  version "1.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.7/anigit-aarch64-apple-darwin.tar.gz"
      sha256 "c2810285433a5e0c3b8648f715e606878a61561f8044aa38fe74f773353a3648"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.7/anigit-x86_64-apple-darwin.tar.gz"
      sha256 "bfc9363fc9accb01a2229e7cbdad11ff035262f3699e70fcc830aed136265794"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.7/anigit-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "486b4fcf48a0fb8e7bbfdbe0fbba35fd356c164d2c3c1bcd831223419bc16a74"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.7/anigit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a409baf44ea10fa6e54c21aacc1f27985dd871b510226c514a9cb51afa90827"
    end
  end

  def install
    bin.install "anigit"
  end

  test do
    assert_match "anigit #{version}", shell_output("#{bin}/anigit --version")
  end
end
