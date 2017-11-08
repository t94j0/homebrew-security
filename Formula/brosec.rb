require "language/node"

class Brosec < Formula
  desc "An interactive reference tool to help security professionals utilize useful payloads and commands."
  homepage "https://github.com/gabemarshall/Brosec"
  url "https://registry.npmjs.org/Brosec/-/Brosec-1.4.1.tgz"
  sha256 "ccc29314520d8b50b354e9d948408a8c5a794ccf8849dfecc7445377203cc01c"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Brosec`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
