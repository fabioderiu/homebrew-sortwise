class Sortwise < Formula
  include Language::Python::Virtualenv

  desc "AI-powered file organizer for macOS"
  homepage "https://github.com/fabioderiu/sortwise"
  url "https://github.com/fabioderiu/sortwise/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8b406de69b4578593310b63a918344d380ba321315c3e41a057a94dc8eef7fcd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"sortwise", "--version"
  end
end
