class Phorganize < Formula
  include Language::Python::Virtualenv

  desc "Phorganize is a python script to organize photos and videos using embedded meta data in the files."
  homepage "https://github.com/rioriost/phorganize"
  url "https://files.pythonhosted.org/packages/43/92/8110a0c8cd4fa6248d7f5fd61c62c44c67738615750632d142c48223acc9/phorganize-0.1.5.tar.gz"
  sha256 "03b9c226eaf95f3a18e2a10d5af5a6b302222c801fc03e664e009d1feec969a4"
  license "MIT"

  depends_on "python@3.13"
  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/6c/73/9f872cb81fc5c3bb48f7227872c28975f998f3e7c2b1c16e95e6432bbb90/python_magic-0.4.27-py2.py3-none-any.whl"
    sha256 "c212960ad306f700aa0d01e5d7a325d20548ff97eb9920dcd29513174f0294d3"
  end

  def install
    cd "." do
      virtualenv_install_with_resources
    end
  end

  test do
    system "#{bin}/phorganize", "--help"
  end
end
