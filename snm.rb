class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-97"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-97/x86_64-apple-darwin.tar.gz"
    sha256 "46b7298c8ebf20a36f487a0cee721433f10f9544f3209d07a2483d87aebd6129"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-97/aarch64-apple-darwin.tar.gz"
    sha256 "dfd62217512504275133c479407a1104783b7204595c42a7dd2292c52189fafb"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
