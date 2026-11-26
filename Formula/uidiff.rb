class Uidiff < Formula
  desc "Align moved screenshot content and box visual changes"
  homepage "https://github.com/pamin-labs/uidiff"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.2/uidiff-0.0.2-macos-x64.tar.gz"
      sha256 "6eab36eb59d806ad2077f940dcb9604b44d078ed3dd976c06018ff01eb827548"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.2/uidiff-0.0.2-macos-arm64.tar.gz"
      sha256 "cb7dff777991ffec7d054b8e3b771e3c898a32d984fcefbd3f15ffa0a35cbf16"
    end
  end
  on_linux do
    on_intel do
      url "https://uidiff.paminlabs.com/download/v0.0.2/uidiff-0.0.2-linux-x64.tar.gz"
      sha256 "db8e6372c838632f958c641d5d2e974b4ab2211c1155ced92a4b8210940c8016"
    end
    on_arm do
      url "https://uidiff.paminlabs.com/download/v0.0.2/uidiff-0.0.2-linux-arm64.tar.gz"
      sha256 "92341a153e0d18ea2e961e5f1ec8340fa87a8f1353a2de62053092223ed8c834"
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
