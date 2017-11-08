require "language/go"

class Airmaster < Formula
  desc "Use ExpiredDomains.net and BlueCoat to find useful domains for red team."
  homepage "https://github.com/t94j0/AIRMASTER"
  url "https://github.com/t94j0/AIRMASTER/archive/v1.0.tar.gz"
  sha256 "abe405bf0f5f33a3d5b9f0b14996607fb5f14f4ae620c179b4e3b89599ad56e3"

  depends_on "go" => :build
  depends_on "tesseract"

  go_resource "github.com/PuerkitoBio/goquery" do
    url "https://github.com/PuerkitoBio/goquery.git",
        :revision => "8806ada2a4ab225c06e9106f9631be80932db7ce"
  end

  go_resource "github.com/andybalholm/cascadia" do
    url "https://github.com/andybalholm/cascadia.git",
        :revision => "349dd0209470eabd9514242c688c403c0926d266"
  end

  go_resource "github.com/fsnotify/fsnotify" do
    url "https://github.com/fsnotify/fsnotify.git",
        :revision => "4da3e2cfbabc9f751898f250b49f2439785783a1"
  end

  go_resource "github.com/hashicorp/hcl" do
    url "https://github.com/hashicorp/hcl.git",
        :revision => "392dba7d905ed5d04a5794ba89f558b27e2ba1ca"
  end

  go_resource "github.com/magiconair/properties" do
    url "https://github.com/magiconair/properties.git",
        :revision => "be5ece7dd465ab0765a9682137865547526d1dfb"
  end

  go_resource "github.com/mitchellh/go-homedir" do
    url "https://github.com/mitchellh/go-homedir.git",
        :revision => "b8bc1bf767474819792c23f32d8286a45736f1c6"
  end

  go_resource "github.com/mitchellh/mapstructure" do
    url "https://github.com/mitchellh/mapstructure.git",
        :revision => "d0303fe809921458f417bcf828397a65db30a7e4"
  end

  go_resource "github.com/pelletier/go-toml" do
    url "https://github.com/pelletier/go-toml.git",
        :revision => "69d355db5304c0f7f809a2edc054553e7142f016"
  end

  go_resource "github.com/spf13/afero" do
    url "https://github.com/spf13/afero.git",
        :revision => "9be650865eab0c12963d8753212f4f9c66cdcf12"
  end

  go_resource "github.com/spf13/cast" do
    url "https://github.com/spf13/cast.git",
        :revision => "acbeb36b902d72a7a4c18e8f3241075e7ab763e4"
  end

  go_resource "github.com/spf13/cobra" do
    url "https://github.com/spf13/cobra.git",
        :revision => "715f41bd7a70b5111f898b71ab484da52ee6266d"
  end

  go_resource "github.com/spf13/jwalterweatherman" do
    url "https://github.com/spf13/jwalterweatherman.git",
        :revision => "0efa5202c04663c757d84f90f5219c1250baf94f"
  end

  go_resource "github.com/spf13/pflag" do
    url "https://github.com/spf13/pflag.git",
        :revision => "e57e3eeb33f795204c1ca35f56c44f83227c6e66"
  end

  go_resource "github.com/spf13/viper" do
    url "https://github.com/spf13/viper.git",
        :revision => "c1de95864d73a5465492829d7cb2dd422b19ac96"
  end

  go_resource "github.com/t94j0/godaddy" do
    url "https://github.com/t94j0/godaddy.git",
        :revision => "95fe2f07bd8ea5b3490f72043b1444a4d70b13fb"
  end

  go_resource "golang.org/x/net" do
    url "https://go.googlesource.com/net.git",
        :revision => "a6577fac2d73be281a500b310739095313165611"
  end

  go_resource "golang.org/x/sys" do
    url "https://go.googlesource.com/sys.git",
        :revision => "cd2c276457edda6df7fb04895d3fd6a6add42926"
  end

  go_resource "golang.org/x/text" do
    url "https://go.googlesource.com/text.git",
        :revision => "836efe42bb4aa16aaa17b9c155d8813d336ed720"
  end

  go_resource "gopkg.in/yaml.v2" do
    url "https://gopkg.in/yaml.v2.git",
        :revision => "3b4ad1db5b2a649883ff3782f5f9f6fb52be71af"
  end

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p "src/github.com/t94j0"
    ln_s buildpath, "src/github.com/t94j0/AIRMASTER"

    Language::Go.stage_deps resources, buildpath/"src"

    system "go", "build", "-o", bin/"AIRMASTER"
  end

  test do
    system "AIRMASTER", "--help"
  end
end
