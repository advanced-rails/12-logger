# == Schema Information
#
# Table name: logs
#
#  id         :integer          not null, primary key
#  uid        :integer
#  email      :string
#  role       :string
#  controller :string
#  action     :string
#  params     :text
#  datetime   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Log < ApplicationRecord
end
