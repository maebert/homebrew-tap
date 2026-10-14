class Botsay < Formula
  desc "Like cowsay, but with cute little block-character robots"
  homepage "https://github.com/maebert/botsay"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.1/botsay-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5ebeab1d3db332fdc9abada72f3300169e8891b1a9584956254334288ff5d5b"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.1/botsay-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b1c5e22aff3a7a442eb3a2b879812cdec2798410089853b7f447310472eaad67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.1/botsay-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29352e1cf3614b70b9a6d5bb0f0827b79424e99a51b54ab84a012631040e58ca"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.1/botsay-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fcc9eb386dfe965fd51db6cc90420429e44d20b3ee44e91a3ed2894cbbc098b"
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
