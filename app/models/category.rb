class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'クレンジング' },
    { id: 3, name: '洗顔料' },
    { id: 4, name: '化粧水' },
    { id: 5, name: '美容液' },
    { id: 6, name: 'パック' },
    { id: 7, name: 'シャンプー' },
    { id: 8, name: '日焼け止め' },
    { id: 9, name: 'アイプチ' },
    { id: 10, name: '飲み薬' },
    { id: 11, name: '塗り薬' },
    { id: 12, name: 'その他' }
  ]
 include ActiveHash::Associations
   has_many :items
end