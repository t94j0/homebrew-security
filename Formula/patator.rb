# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Patator < Formula
  desc "Patator is a multi-purpose brute-forcer, with a modular design and a flexible usage."
  homepage ""
  url "https://github.com/lanjelot/patator/archive/0.6.tar.gz"
  sha256 "7938aba21880f35e36f7ccf05524e0c34c611a5d60d6db02256111e5d6e9e435"

  # requirements.txt
  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/c8/de/791773d6a4b23327c7475ae3d7ada0d07fa147bf77fb6f561a4a7d8afd11/paramiko-2.4.0.tar.gz"
    sha256 "486f637f0a33a4792e0e567be37426c287efaa8c4c4a45e3216f9ce7fd70b1fc"
  end

  resource "pycurl" do
    url "https://files.pythonhosted.org/packages/12/3f/557356b60d8e59a1cce62ffc07ecc03e4f8a202c86adae34d895826281fb/pycurl-7.43.0.tar.gz"
    sha256 "aa975c19b79b6aa6c0518c0cc2ae33528900478f0b500531dbcdbf05beec584c"
  end

  resource "ajpy" do
    url "https://files.pythonhosted.org/packages/a7/89/5a70461aca7029a54fec046afdb45cb67a8efc374ee80d64ee2f21df760a/ajpy-0.0.2.tar.gz"
    sha256 "740e7daf728ba58dabaf4af2c4305262eb207a6e41791424a146a21396ceb9ad"
  end

  resource "impacket" do
    url "https://files.pythonhosted.org/packages/35/72/694c391c7fe29600c2c8d8d4aa97a781562c39bb66a3d20bbee9858ca698/impacket-0.9.15.tar.gz"
    sha256 "26af9c0734525448e4a8d56c9c7b05df0146497ec71101c33812f3f3503201eb"
  end

  resource "cx_Oracle" do
    url "https://files.pythonhosted.org/packages/0a/53/f345dcb49eee2f91f228e8cfc8dc4ed9875b4d0803eadf4bcee894016630/cx_Oracle-6.0.3.tar.gz"
    sha256 "f287776f9b24054fe3470751e44355d28122dcc2aceba7d75e68386125459525"
  end

  resource "MySQL-python" do
    url "https://files.pythonhosted.org/packages/a5/e9/51b544da85a36a68debe7a7091f068d802fc515a3a202652828c73453cad/MySQL-python-1.2.5.zip"
    sha256 "811040b647e5d5686f84db415efd697e6250008b112b6909ba77ac059e140c74"
  end

  resource "pycrypto" do
    url "https://files.pythonhosted.org/packages/60/db/645aa9af249f059cc3a368b118de33889219e0362141e75d4eaf6f80f163/pycrypto-2.6.1.tar.gz"
    sha256 "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/e4/96/a598fa35f8a625bc39fed50cdbe3fd8a52ef215ef8475c17cabade6656cb/dnspython-1.15.0.zip"
    sha256 "40f563e1f7a7b80dc5a4e76ad75c23da53d62f1e15e6e517293b04e1f84ead7c"
  end

  resource "IPy" do
    url "https://files.pythonhosted.org/packages/88/28/79162bfc351a3f1ab44d663ab3f03fb495806fdb592170990a1568ffbf63/IPy-0.83.tar.gz"
    sha256 "61da5a532b159b387176f6eabf11946e7458b6df8fb8b91ff1d345ca7a6edab8"
  end

  resource "pysnmp" do
    url "https://files.pythonhosted.org/packages/3d/d5/c567b2774d5d0dd233e0db45882d6efe7fc0ac1ce5e4576bc76c269d6a23/pysnmp-4.4.2.tar.gz"
    sha256 "aaed6e807c26c3a38257daeb851b7a4354df011aa00ed77bd48ef3c4dd8b467b"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/3c/a6/4d6c88aa1694a06f6671362cb3d0350f0d856edea4685c300785200d1cd9/pyasn1-0.3.7.tar.gz"
    sha256 "187f2a66d617683f8e82d5c00033b7c8a0287e1da88a9d577aebec321cad4965"
  end

  resource "pysqlcipher" do
    url "https://files.pythonhosted.org/packages/65/1b/f344acad06da78039ad63716e4af0286fea0be1e57da7265dba268079e36/pysqlcipher-2.6.10.tar.gz"
    sha256 "7f31a7846541782b76d17c02e791f115208df2eb62e73de3eb3472cde67c79ac"
  end

  # Dependencies
  depends_on "mysql" => :build
  depends_on "sqlcipher" => :build
  depends_on "openldap" => :run
  depends_on "freerdp" => :run
  depends_on "ike-scan" => :run

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib64/python2.7/site-packages"

    %w[paramiko pycurl ajpy impacket cx_Oracle MySQL-python pycrypto dnspython IPy pysnmp pyasn1 pysqlcipher].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    (bin/"patator").write <<-EOS.undent
      #!/usr/bin/env bash
      cd #{libexec} && PYTHONPATH=#{ENV["PYTHONPATH"]} python patator.py
    EOS

    libexec.install Dir["*"]
  end

end
