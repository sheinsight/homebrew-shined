class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-95"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-95/x86_64-apple-darwin.tar.gz"
    sha256 "f5d7c19108ff04f6fb85eccc721975a4bb53481ca424badfaa7c19a2164519b6"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-95/aarch64-apple-darwin.tar.gz"
    sha256 "2a433d050f1854666accefde5a75f589f258c768dee7958aae2a930f4db1f665"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
