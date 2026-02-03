class Clash < Formula
  desc "Manage merge conflicts across git worktrees for parallel AI coding agents"
  homepage "https://clash.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Will be updated by release workflow
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Will be updated by release workflow
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Will be updated by release workflow
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Will be updated by release workflow
    end
  end

  def install
    bin.install "clash"
  end

  test do
    assert_match "clash", shell_output("#{bin}/clash --version")
  end
end
