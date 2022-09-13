# Generated with JReleaser 1.2.0 at 2022-09-13T19:39:16.583078-04:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/rkulyassa/jreleaser-app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "1912ce34912818630cc0aeabedc8d36f04fa8c5d076e0e7e7a56c9f3a5de63be"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
