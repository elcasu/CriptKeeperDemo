class Demo < ActiveRecord::Base
  crypt_keeper :secret_value,
    :encryptor => :aes_new,
    :key => 'fe6f83deb9a8317d0e70c261826d823812ae71b87606ecf8a4',
    :salt => 'fc48bbf9de374448c9e75d31a9075f',
    :encoding => 'UTF-8'
end
