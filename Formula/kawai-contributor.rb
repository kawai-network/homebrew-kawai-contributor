class KawaiContributor < Formula
  desc "Decentralized AI Network Contributor"
  homepage "https://getkawai.com"
  url "https://storage.getkawai.com/0.2.2/contributor/kawai-contributor-0.2.2-darwin-amd64.tar.gz"
  sha256 "TODO_FILL_IN_SHA256"
  license "MIT"

  livecheck do
    url "https://storage.getkawai.com/"
    regex(/href=["']?(\d+\.\d+\.\d+)["']?/i)
    strategy :page_match
  end

  def install
    bin.install "kawai-contributor"
  end

  test do
    system "#{bin}/kawai-contributor", "--version"
  end
end
