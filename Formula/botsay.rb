class Botsay < Formula
  desc "Like cowsay, but with cute little block-character robots"
  homepage "https://github.com/maebert/botsay"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.0/botsay-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "31b67d1ae132ebec0e4505f0e76d06e3667a4dab3529de53a68b721b8ff979c2"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.0/botsay-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e2e13f6b97db2d8c0789b83eec8f86aa8661140c3735ff26e78d411f7f31b1e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.0/botsay-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c080b6ef6d12c2fe353acaf2bd0c5bc3c71227ced651e67bab86183a81585321"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.0/botsay-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2fb6c4956fef27370c326205e5c772b48b6e150d9bda87f76a48ad937a53fde"
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
