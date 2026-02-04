class Clash < Formula
  desc "Manage merge conflicts across git worktrees for parallel AI coding agents"
  homepage "https://clash.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-apple-darwin.tar.gz"
      sha256 "8e048ad888ad57897b6667f33687a16b4b9d29a801a54615c50610e08d90209a"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-apple-darwin.tar.gz"
      sha256 "4198b426ac417a49204b51fce9c0ef71cef1fee900a3a336fe4ed1635c974a68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e78adf63b0584ca9385f3a40204ad3f732ccae40977c3b177219463d6edd0255"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.1.0/clash-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "021546c4a5e9c82191f63e0c616b04d458553646643681a27436ae7fe9cf5f8e"
    end
  end

  def install
    bin.install "clash"
  end

  test do
    assert_match "clash", shell_output("#{bin}/clash --version")
  end
end
