class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.5/blastqr-cli-v3.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "523b6a082edf49674e87298541b6430253a49820b3c780d889cd4eeaeccd8257"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.5/blastqr-cli-v3.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "f9ec10a4933713637495cd3c26a235fd9022c71e27681c4cdcca45e9f4c43466"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.5/blastqr-cli-v3.0.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37dad81b86c508830d2aeeeddc64a4398c9fcfe2d233199d4b79d5dacf8a9372"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.5/blastqr-cli-v3.0.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bc49dcd34f467792ecf4d8568e743eea21c0a3f16975495702b801767193d1f"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
