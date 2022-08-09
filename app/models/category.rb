class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'クレンジング' },
    { id: 2, name: '洗顔料' },
    { id: 3, name: '化粧水' },
    { id: 4, name: '美容液' },
    { id: 5, name: 'パック' },
    { id: 6, name: 'シャンプー' },
    { id: 7, name: '日焼け止め' },
    { id: 8, name: 'アイプチ' },
    { id: 9, name: '飲み薬' },
    { id: 10, name: '塗り薬' },
    { id: 11, name: 'その他' }
  ]
 include ActiveHash::Associations
   has_many :items
end