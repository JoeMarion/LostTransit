
Rails.application.config.assets.version = '1.0'

# Precompile Images
Rails.application.config.assets.precompile += ['login-background.jpg', 'home-header.jpg', 'transit-construction.jpg', 'transit-header.png', 'transit-logo.png', 'welcome-transits.png', 'announcement.png']

# Precompile Stylesheets
Rails.application.config.assets.precompile += ['devise.scss', 'navbar.scss', 'footer.scss', 'static.scss', 'forum.scss', 'posts.scss', 'posts-new.scss.erb']
