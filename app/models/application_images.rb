class Image < ActiveRecord::Base
  def Img=(input_data)
    self.filename = input_data.original_filename
    self.filetype = input_data.content_type.chomp
    self.img = input_data.read
  end
end