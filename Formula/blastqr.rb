class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.1/blastqr-cli-v3.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "1bdf1caf1b6e8a050eeb4eda71daeca885257cf74fcdcf82428cfe9561e29a12"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.1/blastqr-cli-v3.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "468b78641534e45c47adc6ef6ff7e1b2fbdad1c0adaa7fa0f8270e67999b1c20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.1/blastqr-cli-v3.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9a47676f5fa270ee8d6bb052db2f9f4f13abd772728bf443011ececb8ed78dc"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.1/blastqr-cli-v3.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87b1f8a44cf1dc0542e954fad7cc5dffde2ec101221328e7b22ce1a512fe9525"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
