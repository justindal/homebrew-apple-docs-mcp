class AppleDocsMCPServer < Formula
  desc "MCP Server for Apple Developer Documentation"
  homepage "https://github.com/justindal/Apple-Docs-MCP"
  url "https://github.com/justindal/Apple-Docs-MCP/archive/refs/tags/v1.0.0.zip"
  sha256 "383c21cf24df81a7d4b983805c0e2020474d3a9eb96bdfe397d34247293d0df2"
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