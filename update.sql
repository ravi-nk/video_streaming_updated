ALTER TABLE `settings` ADD `paystack_payment_on_off` INT(1) NOT NULL DEFAULT '0' AFTER `razorpay_secret`, ADD `paystack_secret_key` VARCHAR(255) NULL DEFAULT NULL AFTER `paystack_payment_on_off`;
ALTER TABLE `users` ADD `paystack_payment_id` VARCHAR(255) NULL DEFAULT NULL AFTER `razorpay_payment_id`;
ALTER TABLE `movie_videos` ADD `subtitle_language` VARCHAR(255) NULL DEFAULT NULL AFTER `download_url`, ADD `subtitle_url` VARCHAR(500) NULL DEFAULT NULL AFTER `subtitle_language`;
ALTER TABLE `episodes` ADD `subtitle_language` VARCHAR(255) NULL DEFAULT NULL AFTER `download_url`, ADD `subtitle_url` VARCHAR(500) NULL DEFAULT NULL AFTER `subtitle_language`;
ALTER TABLE `sports_videos` ADD `subtitle_language` VARCHAR(255) NULL DEFAULT NULL AFTER `download_url`, ADD `subtitle_url` VARCHAR(500) NULL DEFAULT NULL AFTER `subtitle_language`;
ALTER TABLE `users` ADD `google_id` VARCHAR(255) NULL DEFAULT NULL AFTER `login_status`;
ALTER TABLE `users` ADD `facebook_id` VARCHAR(255) NULL DEFAULT NULL AFTER `google_id`;
ALTER TABLE `movie_videos` ADD `video_url_480` longtext NULL DEFAULT NULL AFTER `video_url`, ADD `video_url_720` longtext NULL DEFAULT NULL AFTER `video_url_480`, ADD `video_url_1080` longtext NULL DEFAULT NULL AFTER `video_url_720`;
ALTER TABLE `movie_videos` CHANGE `subtitle_language` `subtitle_language1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `subtitle_url` `subtitle_url1` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;
ALTER TABLE `movie_videos` ADD `subtitle_language2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url1`, ADD `subtitle_url2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language2`, ADD `subtitle_language3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url2`, ADD `subtitle_url3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language3`;
ALTER TABLE `episodes` ADD `video_url_480` longtext NULL DEFAULT NULL AFTER `video_url`, ADD `video_url_720` longtext NULL DEFAULT NULL AFTER `video_url_480`, ADD `video_url_1080` longtext NULL DEFAULT NULL AFTER `video_url_720`;
ALTER TABLE `episodes` CHANGE `subtitle_language` `subtitle_language1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `subtitle_url` `subtitle_url1` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;
ALTER TABLE `episodes` ADD `subtitle_language2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url1`, ADD `subtitle_url2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language2`, ADD `subtitle_language3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url2`, ADD `subtitle_url3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language3`;
ALTER TABLE `sports_videos` ADD `video_url_480` longtext NULL DEFAULT NULL AFTER `video_url`, ADD `video_url_720` longtext NULL DEFAULT NULL AFTER `video_url_480`, ADD `video_url_1080` longtext NULL DEFAULT NULL AFTER `video_url_720`;
ALTER TABLE `sports_videos` CHANGE `subtitle_language` `subtitle_language1` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL, CHANGE `subtitle_url` `subtitle_url1` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;
ALTER TABLE `sports_videos` ADD `subtitle_language2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url1`, ADD `subtitle_url2` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language2`, ADD `subtitle_language3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_url2`, ADD `subtitle_url3` VARCHAR(255) NULL DEFAULT NULL AFTER `subtitle_language3`;

ALTER TABLE `settings` ADD `google_login` VARCHAR(255) NOT NULL DEFAULT '0' AFTER `external_css_js`, ADD `facebook_login` VARCHAR(255) NOT NULL DEFAULT '0' AFTER `google_login`;

ALTER TABLE `settings` ADD `google_client_id` VARCHAR(255) NULL DEFAULT NULL AFTER `facebook_login`, ADD `google_client_secret` VARCHAR(255) NULL DEFAULT NULL AFTER `google_client_id`, ADD `google_redirect` TEXT NULL DEFAULT NULL AFTER `google_client_secret`, ADD `facebook_client_id` VARCHAR(255) NULL DEFAULT NULL AFTER `google_redirect`, ADD `facebook_client_secret` VARCHAR(255) NULL DEFAULT NULL AFTER `facebook_client_id`, ADD `facebook_redirect` TEXT NULL DEFAULT NULL AFTER `facebook_client_secret`;
ALTER TABLE `settings` CHANGE `facebook_client_id` `facebook_app_id` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL;
ALTER TABLE `users` ADD `session_id` TEXT NULL DEFAULT NULL AFTER `remember_token`;
ALTER TABLE `channels_list` ADD `channel_url2` VARCHAR(500) NULL DEFAULT NULL AFTER `channel_url`, ADD `channel_url3` VARCHAR(500) NULL DEFAULT NULL AFTER `channel_url2`;

ALTER TABLE `settings` ADD `paystack_public_key` VARCHAR(255) NULL DEFAULT NULL AFTER `paystack_secret_key`;


CREATE TABLE `settings_player` (
  `id` int(11) NOT NULL,
  `player_style` varchar(255) DEFAULT NULL,
  `player_watermark` varchar(255) DEFAULT NULL,
  `player_logo` varchar(255) DEFAULT NULL,
  `player_logo_position` varchar(255) DEFAULT NULL,
  `player_url` varchar(255) DEFAULT NULL,
  `autoplay` varchar(255) NOT NULL DEFAULT 'false',
  `theater_mode` varchar(255) NOT NULL DEFAULT 'ON',
  `pip_mode` varchar(255) NOT NULL DEFAULT 'ON',
  `rewind_forward` varchar(255) NOT NULL DEFAULT 'ON',
  `player_ad_on_off` varchar(255) NOT NULL DEFAULT 'OFF',
  `ad_offset` varchar(255) DEFAULT NULL,
  `ad_skip` varchar(255) DEFAULT NULL,
  `ad_web_url` varchar(255) DEFAULT NULL,
  `ad_video_type` varchar(255) NOT NULL DEFAULT 'Local',
  `ad_video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_player`
--

INSERT INTO `settings_player` (`id`, `player_style`, `player_watermark`, `player_logo`, `player_logo_position`, `player_url`, `autoplay`, `theater_mode`, `pip_mode`, `rewind_forward`, `player_ad_on_off`, `ad_offset`, `ad_skip`, `ad_web_url`, `ad_video_type`, `ad_video_url`) VALUES
(1, 'videojs_style1', 'ON', 'logo.png', 'RT', '#', 'false', 'ON', 'ON', 'ON', 'OFF', '5', '5', 'https://www.youtube.com', 'Local', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings_player`
--
ALTER TABLE `settings_player`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings_player`
--
ALTER TABLE `settings_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `movie_videos` ADD `video_quality` INT(1) NULL DEFAULT '0' AFTER `video_type`;
ALTER TABLE `episodes` ADD `video_quality` INT(1) NULL DEFAULT '0' AFTER `video_type`;
ALTER TABLE `sports_videos` ADD `video_quality` INT(1) NULL DEFAULT '0' AFTER `video_type`;

ALTER TABLE `movie_videos` ADD `subtitle_on_off` INT(1) NULL DEFAULT '0' AFTER `download_url`;
ALTER TABLE `episodes` ADD `subtitle_on_off` INT(1) NULL DEFAULT '0' AFTER `download_url`;
ALTER TABLE `sports_videos` ADD `subtitle_on_off` INT(1) NULL DEFAULT '0' AFTER `download_url`;

ALTER TABLE `settings_android_app` ADD `banner_ad_type` VARCHAR(255) NOT NULL DEFAULT 'Admob' AFTER `banner_ad_id`, ADD `interstitial_ad_type` VARCHAR(255) NOT NULL DEFAULT 'Admob' AFTER `banner_ad_type`, ADD `fb_banner_id` VARCHAR(500) NULL DEFAULT NULL AFTER `interstitial_ad_type`, ADD `fb_interstitial_id` VARCHAR(500) NULL DEFAULT NULL AFTER `fb_banner_id`;

ALTER TABLE `settings` ADD `envato_buyer_name` VARCHAR(255) NULL DEFAULT NULL AFTER `maintenance mode`, ADD `envato_purchase_code` VARCHAR(255) NULL DEFAULT NULL AFTER `envato_buyer_name`;

ALTER TABLE `settings` CHANGE `maintenance mode` `maintenance mode` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL;
