class Grpc < Formula
  url 'git://github.com/grpc/grpc.git', :revision => '62d637c16383b63f084dbdd230791fac9727175e'
  version '62d637c16383b63f084dbdd230791fac9727175e'

  depends_on "protobuf" => "devel"

  def install
    system "git submodule update --init"
    system "make prefix=#{prefix}"
    system "make install prefix=#{prefix}"
  end
end
