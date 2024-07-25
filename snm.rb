class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-107"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-107/x86_64-apple-darwin.tar.gz"
    sha256 "d5f176620c76e078e2fac14582cb09e09a03ab27418c0cc16fcb63dc8043ba63"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-107/aarch64-apple-darwin.tar.gz"
    sha256 "51ab8e0669a92b87bb4d2285e47b364e54e529fa5671c0a68e254fc738d38f2d"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
