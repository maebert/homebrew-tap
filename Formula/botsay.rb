class Botsay < Formula
  desc "Like cowsay, but with cute little block-character robots"
  homepage "https://github.com/maebert/botsay"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.2/botsay-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "cdcc9b7b0c2e87cd7ff3f1204bae0f96f9e0ee6f0c7cbd26c3d61a1f034bb1f2"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.2/botsay-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "14132b6e13e4b6e40214aa2e9929c8d21bc90946925e49621396894320103ac2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maebert/botsay/releases/download/v0.2.2/botsay-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "624f39105d9d615ed62d7da62e26d57e479c482c8f14d688bb0d81e3304f4172"
    end
    on_intel do
      url "https://github.com/maebert/botsay/releases/download/v0.2.2/botsay-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4e73d2b48320a4c73c58c53d07533a7d76075a3c338b8fd0dbf8980ddb323e0"
    end
  end

  def install
    bin.install "botsay"
    bin.install_symlink bin/"botsay" => "botthink"
  end

  test do
    assert_match "│ hello │", shell_output("#{bin}/botsay -s 7 hello")
    assert_match "○", shell_output("#{bin}/botthink -s 7 hmm")
  end
end
