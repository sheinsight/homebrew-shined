class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-116"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-116/x86_64-apple-darwin.tar.gz"
    sha256 "b509d5c4c0365c58a36978eae6c5542bd297c10e0c743203bc2035cf1640cc87"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-116/aarch64-apple-darwin.tar.gz"
    sha256 "e81e1c771e282624139632b998ca72ec61cacaf041197ddacf975cab4e7a422c"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
