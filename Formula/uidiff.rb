class Uidiff < Formula
  desc "Align moved screenshot content and box visual changes"
  homepage "https://github.com/pamin-labs/uidiff"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.1/uidiff-0.0.1-macos-x64.tar.gz"
      sha256 "080d28d60cd000207795b3f3bf2c61409f6e7fb181cd67ffbad60e049bd2410c"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.1/uidiff-0.0.1-macos-arm64.tar.gz"
      sha256 "4d6e044fb099254258f7b4277925a1176a44d4429a5c11337fe32ed913766a24"
    end
  end
  on_linux do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.1/uidiff-0.0.1-linux-x64.tar.gz"
      sha256 "3e00861cd0a72f369ae1eafdd3d37aef238c381c6a36e4e3570763a47023e854"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.1/uidiff-0.0.1-linux-arm64.tar.gz"
      sha256 "40c48c01a93bddfe9e1b6d22f4578fcb94c10162ac7b2cfd3782515df2cf66df"
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
