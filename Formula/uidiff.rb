class Uidiff < Formula
  desc "Align moved screenshot content and box visual changes"
  homepage "https://github.com/pamin-labs/uidiff"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.4/uidiff-0.0.4-macos-x64.tar.gz"
      sha256 "98e87df1431e65c2325cf309a75a8edf7e6f1492bdfacb3567f52c11f9791b93"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.4/uidiff-0.0.4-macos-arm64.tar.gz"
      sha256 "5e89757516fd7610f9b43ba6ded841da6c804d2a38f3b0d15c81966053daf17d"
    end
  end
  on_linux do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.4/uidiff-0.0.4-linux-x64.tar.gz"
      sha256 "0259df5379ac2dbb001bf2f85e5d68d0650f7416afae9bb74facd417910e5a07"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.4/uidiff-0.0.4-linux-arm64.tar.gz"
      sha256 "7b715f623bff61740c2e4f9cc65f8a65a2e49bf817c87a6ec844cbca7187de19"
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
