class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/blast/blastqr"
  version "3.3.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.2/blastqr-cli-v3.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "55e1981545c75cf77a68799e8eaac4c141bf99ee90bd18f22cc71eaa917f6894"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.2/blastqr-cli-v3.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "6f54a7735575ea5397ba268ccd22f3c768f24fb89697b14d4d7bd49920887856"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.2/blastqr-cli-v3.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a15df1bf5a85b3cb8a1931aa717128a92da2fa42e12a8eba2faab9e99dbe087"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.2/blastqr-cli-v3.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b99c57272c615e40ce18254bf3047b9c8524c1288e2b2593c865f97c80a86680"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
