class Usage < ActiveHash::Base
  self.data = [
    { id: 1, name: '普通肌' },
    { id: 2, name: '脂性肌' },
    { id: 3, name: '乾燥肌' },
    { id: 4, name: '混合肌' },
    { id: 5, name: '敏感肌' },
    { id: 6, name: 'アトピー肌' }
  ]
 include ActiveHash::Associations
   has_many :items
end