class Reservation < ApplicationRecord
  
  enum consultation_count: { 初診: 0, ２回以上: 1}
  enum treatment: { あり: 0, なし: 1}, _prefix: true
  enum side_effects: { あり: 0, なし: 1}, _prefix: true
  enum pregnancy: { なし: 0, 可能性あり: 1, 妊娠中: 2, 授乳中: 3}, _prefix: true
  enum purpose: { 診断＋診察＋処方: 0, 診察＋処方: 1, 処方のみ: 2}

  belongs_to :user
  
end
