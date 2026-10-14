class Botsay < Formula
  desc "Like cowsay, but with cute little block-character robots"
  homepage "https://github.com/maebert/botsay"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.1.0/botsay-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "362d7d069cf292c4bed28ef070bbba5865a1f90235ae2c3266a9d6e115b44779"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.1.0/botsay-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "074af66f1d8b427ceff6b6214eba4725f1036aac2efed978d6179d35fbfdf912"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.1.0/botsay-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdce71b41903663026ddc763d71d9eaceff838f7d153d422fca1d1f7200c568f"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.1.0/botsay-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8137835502bd2ea3daef6aa9d1cf68db8aa38ed6e42a253b45ced7cd2dfabd5d"
    end
  end

  def install
    bin.install "botsay", "botthink"
  end

  test do
    assert_match "│ hello │", shell_output("#{bin}/botsay -s 7 hello")
    assert_match "○", shell_output("#{bin}/botthink -s 7 hmm")
  end
end
