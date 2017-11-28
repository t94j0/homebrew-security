class ReconSh < Formula
  desc "A toolset to track and organize output of reconnaissance tools"
  homepage "https://github.com/jobertabma/recon.sh"

  head do
    url "https://github.com/jobertabma/recon.sh.git"
  end

  # Need realpath binary
  depends_on "coreutils" => :run

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"recon.sh"
  end
end
