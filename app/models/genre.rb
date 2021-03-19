class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ビジネス' },
    { id: 3, name: '医学・心理学' },
    { id: 4, name: '教養・雑学' },
    { id: 5, name: 'アート・スポーツ' },
    { id: 6, name: '生物・自然' },
    { id: 7, name: '人物' },
    { id: 8, name: '民族' },
    { id: 9, name: '世界史・日本史' },
    { id: 10, name: 'サイエンス' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books
  end