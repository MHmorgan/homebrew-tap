class Commode < Formula
  include Language::Python::Virtualenv

  desc "Terminal client for Cabinet file server."
  homepage "https://github.com/MHmorgan/commode"
  url "https://github.com/MHmorgan/commode/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b2b0b74e1f0bc99db86b412456e0e78cf3c5c9ab67726b92b62e78539b12bf7e"
  license "MPL-2.0"

  depends_on "python@3.10"

  resource "click" do
    url "https://files.pythonhosted.org/packages/4e/b4/a2279d9d0183784e9dd9fd62b7505adab0819662d4b169602a6fef6a5a72/click8-8.0.1.tar.gz"
    sha256 "3412342408c03fbfd3b1826c8fd0fb2caace9b15a9d1c9375555122855449c86"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
    sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b0/b1/7bbf5181f8e3258efae31702f5eab87d8a74a72a0aa78bc8c08c1466e243/urllib3-1.26.8.tar.gz"
    sha256 "0e7c33d9a63e7ddfcb86780aac87befc2fbddf46c58dbb487e0855f7ceec283c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/48/44/76b179e0d1afe6e6a91fd5661c284f60238987f3b42b676d141d01cd5b97/charset-normalizer-2.0.10.tar.gz"
    sha256 "876d180e9d7432c5d1dfd4c5d26b72f099d503e8fcc0feb7532c9289be60fcbd"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end


  def install
    virtualenv_install_with_resources
  end

  test do
  end
end
