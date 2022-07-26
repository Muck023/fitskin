class Evaluation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '肌に合う・効果あり' },
    { id: 3, name: '肌に合う・効果なし' },
    { id: 4, name: '肌に合わない' }
  ]
 include ActiveHash::Associations
   has_many :items
end