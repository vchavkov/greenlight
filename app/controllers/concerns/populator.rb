# frozen_string_literal: true

# BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
#
# Copyright (c) 2018 BigBlueButton Inc. and by respective authors (see below).
#
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; either version 3.0 of the License, or (at your option) any later
# version.
#
# BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License along
# with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.

module Populator
  extend ActiveSupport::Concern

  # Returns a list of rooms that are in the same context of the current user
  def server_rooms_list
    if Rails.configuration.loadbalanced_configuration
      Room.includes(:owner).where(users: { provider: @user_domain })
          .admins_search(@search)
          .admins_order(@order_column, @order_direction)
    else
      Room.all.admins_search(@search).admins_order(@order_column, @order_direction)
    end
  end

  # Returns list of rooms needed to get the recordings on the server
  def rooms_list_for_recordings
    if Rails.configuration.loadbalanced_configuration
      Room.includes(:owner).where(users: { provider: @user_domain }).pluck(:bbb_id)
    else
      Room.pluck(:bbb_id)
    end
  end

  # Returns a list of users that are in the same context of the current user
  def shared_user_list
    roles_can_appear = []
    Role.where(provider: @user_domain).each do |role|
      roles_can_appear << role.name if role.get_permission("can_appear_in_share_list") && role.name != "super_admin"
    end

    initial_list = User.where.not(uid: current_user.uid).with_highest_priority_role(roles_can_appear)

    return initial_list unless Rails.configuration.loadbalanced_configuration
    initial_list.where(provider: @user_domain)
  end
end