class Apfell < Formula
  include Language::Python::Virtualenv

  desc "Collaborative, multi-platform, red teaming framework"
  homepage "https://github.com/its-a-feature/Apfell"
  version "0.1"
  sha256 "44207f7798c52a9404f2334a7ab008a46008e3554afb073e2b341570d8894230"
  head "https://github.com/its-a-feature/Apfell.git"

  # Needed for psycopg2 pg_config
  depends_on "postgresql" => :build
  depends_on "openssl"
  depends_on "python"

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/94/c2/e3cb60c1b7d9478203d4514e2d33ea424ad9bb98e45b21d6225db93f25c9/aiofiles-0.4.0.tar.gz"
    sha256 "021ea0ba314a86027c166ecc4b4c07f2d40fc0f4b3a950d1868a0f2571c2bbee"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/1b/03/215969db11abe8741e9c266a4cbe803a372bd86dd35fa0084c4df6d4bd00/httptools-0.0.13.tar.gz"
    sha256 "e00cbd7ba01ff748e494248183abc6e153f49181169d8a3d41bb49132ca01dfc"
  end

  resource "sanic" do
    url "https://files.pythonhosted.org/packages/c1/d4/a6fa3efa7aa8ff6fb08cddac6f10e92da95e1fd44d6397fb481bf012c2a0/sanic-0.7.0.tar.gz"
    sha256 "22b1a6f1dc55db8a136335cb0961afa95040ca78aa8c78425a40d91e8618e60e"
  end

  resource "ujson" do
    url "https://files.pythonhosted.org/packages/16/c4/79f3409bc710559015464e5f49b9879430d8f87498ecdc335899732e5377/ujson-1.35.tar.gz"
    sha256 "f66073e5506e91d204ab0c614a148d5aa938bdbf104751be66f8ad7a222f5f86"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/5c/37/6daa39aac42b2deda6ee77f408bec0419b600e27b89b374b0d440af32b10/uvloop-0.11.2.tar.gz"
    sha256 "a97bd62ebbdf7e6e84bf44afe439d9b24ce4d8661a29a639626a8c03748f6f98"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/4b/c6/026da2eeed75a49dd0b72a0c7ed6ee5cb2943e396ca9753eabff7359b27b/websockets-5.0.1.tar.gz"
    sha256 "a49d315db5a7a19d55422e1678e8a1c3b9661d7296bef3179fa620cf80b12674"
  end
  resource "peewee" do
    url "https://files.pythonhosted.org/packages/7a/bc/aafce76cae9362dccf70e35c16a6cc11d114ebb640bbb86d76255be5c0d6/peewee-2.10.2.tar.gz"
    sha256 "2342067f48a779e35956a44cd547df883dda35153daa9fe994d970585aaec281"
  end

  resource "peewee-async" do
    url "https://files.pythonhosted.org/packages/cb/98/08f6839b06231304248314d7ec5977ebf58dbe9c5007108862424a3804e5/peewee-async-0.5.12.tar.gz"
    sha256 "ab64a2a376033ce5621406b33735cb064659af05f5c2570af0fba08f6eab6282"
  end

  resource "aiopg" do
    url "https://files.pythonhosted.org/packages/e2/f8/84268dc9ffcb5f9b868162c19d1967dc49050e5573786d597f7d673c154b/aiopg-0.15.0.tar.gz"
    sha256 "2fa57bee0b7b8422408a79de085c3423e0b0633be3a0046b66a53594bf69a837"
  end

  resource "psycopg2" do
    url "https://files.pythonhosted.org/packages/c0/07/93573b97ed61b6fb907c8439bf58f09957564cf7c39612cef36c547e68c6/psycopg2-2.7.6.1.tar.gz"
    sha256 "27959abe64ca1fc6d8cd11a71a1f421d8287831a3262bd4cacd43bbf43cc3c82"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
    sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "Sanic-WTF" do
    url "https://files.pythonhosted.org/packages/70/af/98438151d56180f6a108e4c324604022e376e6775b6f90cd35658fdc6a50/Sanic-WTF-0.5.0.tar.gz"
    sha256 "ec10880c8be492b8817dce6a1cb853c827939e76ffe5df54708b6cc6efd75c4d"
  end

  resource "asn1crypto" do
    url "https://files.pythonhosted.org/packages/fc/f1/8db7daa71f414ddabfa056c4ef792e1461ff655c2ae2928a2b675bfed6b4/asn1crypto-0.24.0.tar.gz"
    sha256 "9d5c20441baf0cb60a4ac34cc447c6c189024b6b4c6cd7877034f4965c464e49"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/e7/a7/4cd50e57cc6f436f1cc3a7e8fa700ff9b8b4d471620629074913e3735fb2/cffi-1.11.5.tar.gz"
    sha256 "e90f17980e6ab0f3c2f3730e56d1fe9bcba1891eeea58966e89d352492cc74f4"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/22/21/233e38f74188db94e8451ef6385754a98f3cad9b59bedf3a8e8b14988be4/cryptography-2.3.1.tar.gz"
    sha256 "8d10113ca826a4c29d5b85b2c4e045ffa8bad74fb525ee0eceb1d38d4c70dfd6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c4935/idna-2.7.tar.gz"
    sha256 "684a38a6f903c1d71d6d5fac066b58d7768af4de2b832e426ec79c30daa94a16"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/8c/2d/aad7f16146f4197a11f8e91fb81df177adcc2073d36a17b1491fd09df6ed/pycparser-2.18.tar.gz"
    sha256 "99a8ca03e29851d96616ad0404b4aad7d9ee16f25c9f9708a11faf2810f7b226"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "anytree" do
    url "https://files.pythonhosted.org/packages/78/bf/9300ecef72d105b3a76de6930916458d6bb8c7e787f5efb1c510bf898873/anytree-2.6.0.tar.gz"
    sha256 "a221b6a603c3a5d5e417894dc48eaa8b1eab04056e1f5bb509bcfff0e7a47883"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/4b/c6/026da2eeed75a49dd0b72a0c7ed6ee5cb2943e396ca9753eabff7359b27b/websockets-5.0.1.tar.gz"
    sha256 "a49d315db5a7a19d55422e1678e8a1c3b9661d7296bef3179fa620cf80b12674"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/4b/c6/026da2eeed75a49dd0b72a0c7ed6ee5cb2943e396ca9753eabff7359b27b/websockets-5.0.1.tar.gz"
    sha256 "a49d315db5a7a19d55422e1678e8a1c3b9661d7296bef3179fa620cf80b12674"
  end

  resource "WTForms" do
    url "https://files.pythonhosted.org/packages/cd/1d/7221354ebfc32b868740d02e44225c2ce00769b0d3dc370e463e2bc4b446/WTForms-2.2.1.tar.gz"
    sha256 "0cdbac3e7f6878086c334aa25dc5a33869a3954e9d1e015130d65a69309b3b61"
  end

  resource "fpdf" do
    url "https://files.pythonhosted.org/packages/37/c6/608a9e6c172bf9124aa687ec8b9f0e8e5d697d59a5f4fad0e2d5ec2a7556/fpdf-1.7.2.tar.gz"
    sha256 "125840783289e7d12552b1e86ab692c37322e7a65b96a99e0ea86cca041b6779"
  end

  resource "pycryptodome" do
    url "https://files.pythonhosted.org/packages/c7/ff/1ca71a40eb69c89778396a30d399639d41473b09c36aff2b700d80dd94b9/pycryptodome-3.7.3.tar.gz"
    sha256 "1a222250e43f3c659b4ebd5df3e11c2f112aab6aef58e38af55ef5678b9f0636"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python3.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib64/python3.7/site-packages"

    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources

    (bin/"apfell").write <<~EOS
      #!/usr/bin/env bash
      cd #{libexec} && PYTHONPATH=#{ENV["PYTHONPATH"]} python3.7 server.py
    EOS

    libexec.install Dir["*"]
  end

  plist_options :manual => "apfell"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>apfell</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{bin}</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/apfell.log</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/apfell.error</string>
    </dict>
    </plist>
  EOS
  end

  test do
    system "#{bin}/apfell"
  end
end
