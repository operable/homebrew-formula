class Grpc < Formula
  url 'git://github.com/grpc/grpc.git', :revision => '300ebc4c623b46f45506ac14b31e2660196dc596'
  version '300ebc4c623b46f45506ac14b31e2660196dc596'

  depends_on "protobuf" # devel

  def install
    system "git submodule update --init"
    system "make shared_c prefix=#{prefix}"
    system "make install prefix=#{prefix}"
  end
end
