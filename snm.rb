class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-118"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-118/x86_64-apple-darwin.tar.gz"
    sha256 "fe42c6024be40eeff3275d3f8e31ef2cf44634573b6b118a3b0c29ed67046a58"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-118/aarch64-apple-darwin.tar.gz"
    sha256 "ec3e7b08360554cf479833070d767dad0597344dcdb6612cc2c67b2fc3c947fd"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
