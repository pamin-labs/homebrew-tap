class Uidiff < Formula
  desc "Align moved screenshot content and box visual changes"
  homepage "https://github.com/pamin-labs/uidiff"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.3/uidiff-0.0.3-macos-x64.tar.gz"
      sha256 "9405eca86b8957a65eecf11e51ab009abb1e554114f636e137b4b71c5b44f01a"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.3/uidiff-0.0.3-macos-arm64.tar.gz"
      sha256 "21bf791b183245bd93ca73eca0822132b4eb27de618d8a38d1e01fcbdf3f317f"
    end
  end
  on_linux do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.3/uidiff-0.0.3-linux-x64.tar.gz"
      sha256 "bdfcc4ea3de6ee4c7ef851ac4811a364db5f8a81525c783d9609d8b978d0574c"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.3/uidiff-0.0.3-linux-arm64.tar.gz"
      sha256 "df1b07485ef2dda4001038f35d699af7e070c1da024ad6df4754852ec0af68e4"
    end
  end

  def install
    bin.install "uidiff"
    pkgshare.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_match "uidiff", shell_output("#{bin}/uidiff --help")
  end
end
