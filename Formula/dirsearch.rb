class Dirsearch < Formula
  desc "Web path scanner"
  homepage ""
  url "https://github.com/maurosoria/dirsearch/archive/v0.3.9.tar.gz"
  sha256 "a832d94d919b9976352222a145e6df4a8195e93facd4d8eae201ed55959f2947"

  def install
    (bin/"dirsearch").write <<-EOS
#!/usr/bin/env bash
cd #{libexec} && PYTHONPATH=#{ENV["PYTHONPATH"]} python3 dirsearch.py $@
    EOS

    libexec.install Dir["*"]
  end

  test do
    system "false"
  end
end
