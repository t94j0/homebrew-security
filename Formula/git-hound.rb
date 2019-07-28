class GitHound < Formula
  desc "GitHound pinpoints exposed API keys on GitHub"
  homepage "https://github.com/tillson/git-hound"
  url "https://github.com/tillson/git-hound/releases/download/v1.0/git-hound_1.0_Darwin_x86_64.tar.gz"
  sha256 "c87caf2a1127ec30a6b5848ff070c7b191419c51927c1ea5a45094506ed6ed34"

  def install
    bin.install "git-hound"
  end

  test do
    system "#{bin}/git-hound", "-h"
  end
end
