class FileSwapper
  attr_accessor :file1,:file2
@temp1,@temp2 = [],[]

  
  def initialize(file1,file2)
    @file1 = file1
    @file2 = file2
    end
  
  def fswap
    f1 = File.open(@file1,"r+")
    f2 = File.open(@file2, "r+")
    f1.readlines.each { |lines| @temp1 = lines}
    f2.readlines.each { |lines| @temp2 = lines}
    f1.seek(0, IO::SEEK_SET)
    f2.seek(0, IO::SEEK_SET)
    f1.write(@temp2)
    f2.write(@temp1)
    f1.close
    f2.close
  end
 
end

f = FileSwapper.new("mj1.txt","mj2.txt")
f.fswap()
