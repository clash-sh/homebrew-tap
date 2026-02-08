class Clash < Formula
  desc "Avoid merge conflicts across git worktrees for parallel AI coding agents"
  homepage "https://clash.sh"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.2.0/clash-aarch64-apple-darwin.tar.gz"
      sha256 "b454ccf7fe120aec35d9225aa9a30da7b62edf204c9bd4feca8ff7cdbcf96d98"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.2.0/clash-x86_64-apple-darwin.tar.gz"
      sha256 "1778a28805883650264ba514710ceea9682c8c4135e46a74a2aa4f10d522dd7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/clash-sh/clash/releases/download/v0.2.0/clash-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90e126e80180f61d51f6d555c792e5e82f4b91326669d90e76f7fcc4b859570b"
    else
      url "https://github.com/clash-sh/clash/releases/download/v0.2.0/clash-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "562c33968037b58e04e04fb885d92f792f469184841fa9126e17a64105da1785"
    end
  end

  def install
    bin.install "clash"
  end

  test do
    assert_match "clash", shell_output("#{bin}/clash --version")
  end
end
