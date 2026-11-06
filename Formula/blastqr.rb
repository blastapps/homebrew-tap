class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.2/blastqr-cli-v3.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "f4737f14b956cc5f5bb54184566953fc5b43124f75092a20dd0424f703b51a2d"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.2/blastqr-cli-v3.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "73151058b8aece99c7351afae247281332011a346a82a20bfe4f309e901df9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.2/blastqr-cli-v3.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d8a8cd9dbae74d4f7fd1007f6cbc1ec8ceae69ee8d935d6f310433995aed1ef"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.2/blastqr-cli-v3.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3e16e407fffdcb62d7cd96c5652e4bb9c6242cb56cd76e73a35fac3a675d70c"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
