class Anigit < Formula
  desc "Git, but for your anime-watching history"
  homepage "https://github.com/TSSS-org/anigit"
  version "1.4.8"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.8/anigit-aarch64-apple-darwin.tar.gz"
      sha256 "bb39fcc08649ce74ed68c4d6dafde82f961745f5dcfc20fb188b2abbf92436ef"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.8/anigit-x86_64-apple-darwin.tar.gz"
      sha256 "0bf826f9a71327a14bf5660a2c7b919c1304cc4fdd899173ee5202e9ec583313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.8/anigit-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "917c8bab600b3a9b1c39e3ae35290880c7cebe171809885f0e1adaee2a01b4a2"
    else
      url "https://github.com/TSSS-org/anigit/releases/download/v1.4.8/anigit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf60ff28ae1bf46328f1b1277514fc3f662815c848dee6627e48a73ef64dcdac"
    end
  end

  def install
    bin.install "anigit"
  end

  test do
    assert_match "anigit #{version}", shell_output("#{bin}/anigit --version")
  end
end
