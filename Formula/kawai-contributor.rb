class KawaiContributor < Formula
  desc "Decentralized AI Network Contributor"
  homepage "https://getkawai.com"

  version "0.2.2"

  if Hardware::CPU.arm?
    url "https://storage.getkawai.com/0.2.2/contributor/kawai-contributor-0.2.2-darwin-arm64.tar.gz"
    sha256 :no_check
  elsif Hardware::CPU.intel?
    url "https://storage.getkawai.com/0.2.2/contributor/kawai-contributor-0.2.2-darwin-amd64.tar.gz"
    sha256 :no_check
  else
    odie "Unsupported architecture: #{Hardware::CPU.arch}"
  end

  license "MIT"

  def install
    # Remove quarantine attribute (required for binaries from external sources)
    if MacOS.version >= :catalina
      system "xattr", "-d", "com.apple.quarantine", "kawai-contributor"
    end

    bin.install "kawai-contributor"
  end

  test do
    system "#{bin}/kawai-contributor", "--help"
  end
end
