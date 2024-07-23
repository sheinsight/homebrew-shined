class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-99"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-99/x86_64-apple-darwin.tar.gz"
    sha256 "454f516e045c1d72e0d30c1927e408cc8b1c1a9f7d822e10508cdd83e294e16b"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-99/aarch64-apple-darwin.tar.gz"
    sha256 "db0256a0ccf447e213524ffa1cbe7ace4c9efcd147b7e081ac11c9f14cc39698"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
