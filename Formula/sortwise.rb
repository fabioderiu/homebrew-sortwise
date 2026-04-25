class Sortwise < Formula
  include Language::Python::Virtualenv

  desc "AI-powered file organizer for macOS"
  homepage "https://github.com/fabioderiu/sortwise"
  url "https://github.com/fabioderiu/sortwise/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"sortwise", "--version"
  end
end
