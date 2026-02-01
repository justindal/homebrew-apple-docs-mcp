class AppleDocsMcpServer < Formula
  desc "MCP Server for Apple Developer Documentation"
  homepage "https://github.com/justindal/Apple-Docs-MCP"
  url "https://github.com/justindal/Apple-Docs-MCP/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "c1c6f4c26e7b72f76882de377ef3d5388505bcd4d829502fc4b54aa2f7ac69a3"
  license "MIT"
  
  depends_on :xcode => ["16.0", :build] 

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"

    bin.install ".build/release/Apple-Docs-MCP"
  end

  test do
    system "#{bin}/Apple-Docs-MCP", "--version"
  end
end