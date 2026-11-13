class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/blast/blastqr"
  version "3.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.2.0/blastqr-cli-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "2eba301788b609b98a8bb69b458a8be96379ca618b94e33780c59b70e20cafd2"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.2.0/blastqr-cli-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "13bc9f8c7d140ca5201c1847702318843370e8ddb1ced024c8eb2ca42392d279"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.2.0/blastqr-cli-v3.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27b3c3dda6bfd37929776ef6df77d02ae4ac84ad171581cd368aaa2cc44445a6"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.2.0/blastqr-cli-v3.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f09892957368c78a9dd88f6cc8c4a4407bfc48b0e9f76c3ecf7e5bd9af45936"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
