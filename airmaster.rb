class Airmaster < Formula
  desc "Use ExpiredDomains.net and BlueCoat to find useful domains for red team."
  homepage "https://github.com/t94j0/AIRMASTER"
  url "https://github.com/t94j0/AIRMASTER/archive/v1.0.tar.gz"
  sha256 "abe405bf0f5f33a3d5b9f0b14996607fb5f14f4ae620c179b4e3b89599ad56e3"

  depends_on "go" => :build
  depends_on "tesseract"

  def install
    ENV["GOPATH"] = buildpath
    system "go", "get", "github.com/PuerkitoBio/goquery"
    system "go", "get", "github.com/mitchellh/go-homedir"
    system "go", "get", "github.com/spf13/cobra"
    system "go", "get", "github.com/spf13/viper"
    system "go", "get", "github.com/t94j0/godaddy"

    (buildpath/"src/github.com/t94j0/AIRMASTER").install buildpath.children
    cd buildpath/"src/github.com/t94j0/AIRMASTER" do
      system "go", "build", "-o", bin/"AIRMASTER"
    end
  end

  test do
    system "AIRMASTER", "--help"
  end
end
