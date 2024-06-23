class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-70"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-70/x86_64-apple-darwin.tar.gz"
    sha256 "16c45beda68ac374ac76a3b61c2901d14da42dfb8b0e6889b4ec90fcca7ed5e1"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-70/aarch64-apple-darwin.tar.gz"
    sha256 "11cec302737dacfe0bf3872a5d7f162e0cf39f127e4cca9d3fbf1aa50cf66bda"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
