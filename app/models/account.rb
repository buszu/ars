class Account < ApplicationRecord
  include Rodauth::Model(RodauthMain)

  enum :status, unverified: 1, verified: 2, closed: 3

  has_many :access_grants,
           class_name: "Doorkeeper::AccessGrant",
           foreign_key: :resource_owner_id,
           dependent: :delete_all

  has_many :access_tokens,
           class_name: "Doorkeeper::AccessToken",
           foreign_key: :resource_owner_id,
           dependent: :delete_all
end
