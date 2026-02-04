class Clash < Formula
  desc "Manage merge conflicts across git worktrees for parallel AI coding agents"
  homepage "https://clash.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-apple-darwin.tar.gz"
      sha256 "f3b8a92395554d123d8fc8f971dde76cbb3081c2c5f2fc0fc6e7003386ccc060"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-apple-darwin.tar.gz"
      sha256 "d320edbdea12a0236463b5be0083fb4c5f4666e46e527f64e86f01fdde8068d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c535faed90848ca48c54397527df129cc0ba38d891bce0101e0fcdb4d86cbec"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "caee31a261dc34e873e093ada7a97d48c8299c1d00460c8df20c54f2cf312f87"
    end
  end

  def install
    bin.install "clash"
  end

  test do
    assert_match "clash", shell_output("#{bin}/clash --version")
  end
end
