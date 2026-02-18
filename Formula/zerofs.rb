class Zerofs < Formula
  desc "The Filesystem That Makes S3 your Primary Storage. 9P/NFS/NBD on top of S3"
  homepage "https://github.com/Barre/ZeroFS"
  url "https://github.com/Barre/ZeroFS/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "7fec981e9f8c2764e118bbf319a65a748789dd0f31f16ab1c062ca2039d2c619"
  license "AGPL-3.0-only"
  head "https://github.com/Barre/ZeroFS.git", branch: "main"

  depends_on "rust" => :build

  def install
    cd "zerofs" do
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  end

  def caveats
    <<~EOS
      To get started with ZeroFS:

        zerofs init

      ZeroFS uses NFS mounts which require root privileges.
      You may need to run mount/unmount operations with sudo.

      See https://github.com/Barre/ZeroFS for full documentation.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zerofs --version")
  end
end
