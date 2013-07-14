# -*- encoding : utf-8 -*-
group = Group.find_or_create_by_name 'toocoo'
group.alias = 'toocoo'
group.domain ||= 'localhost'
group.save(:validate => false)
Setting.default_group = group.id
role = Role.find_or_create_by_name 'admin'
admin = User.find_or_create_by_login 'admin'
admin.email = 'admin@toocoo.com'
admin.password='123456'
admin.password_confirmation='123456'
admin.state = 'active'
admin.save!
admin.roles << role rescue nil
