class GitFuck < Formula
  desc "Implementation of `git-fuck`"
  homepage ""
  url "https://github.com/t94j0/git-fuck/archive/1.0.tar.gz"
  sha256 "fa5011ea18b46dfbbf0ec15a2142599dcc3a736dd04e3d9d97b09b5631c4196c"

  depends_on "git" => :run

  def install
	  bin.install "git-fuck"
  end

end
