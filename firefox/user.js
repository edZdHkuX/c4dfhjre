// Ref: https://gist.github.com/0XDE57/fbd302cef7693e62c769
// Ref: https://gitlab.com/-/snippets/2510164/raw/main/snippetfile1.txt

// PERFORMANCE
user_pref("layers.acceleration.force-enabled", true);
user_pref("layers.offmainthreadcomposition.enabled", true);
user_pref("layers.offmainthreadcomposition.async-animations", true);
user_pref("layers.async-video.enabled", true);
user_pref("html5.offmainthread", true);

// Graphics関連
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.precache-shaders", true);
user_pref("gfx.webrender.compositor", true);
user_pref("layers.gpu-process.enabled", true);
user_pref("media.hardware-video-decoding.enabled", true);
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.accelerated.cache-items", 32768);
user_pref("gfx.canvas.accelerated.cache-size", 4096);
user_pref("gfx.content.skia-font-cache-size", 80);
user_pref("image.cache.size", 10485760);
user_pref("image.mem.decode_bytes_at_a_time", 131072);
user_pref("image.mem.shared.unmap.min_expiration_ms", 120000);
user_pref("media.memory_cache_max_size", 1048576);
user_pref("media.memory_caches_combined_limit_kb", 2560000);
user_pref("media.cache_readahead_limit", 9000);
user_pref("media.cache_resume_threshold", 6000);

// user_pref("browser.visited_color", "#C0C0C0");  // 訪問済みリンクの色
// user_pref("browser.startup.homepage", "about:blank");

// Pocket無効
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.pocket.api", "");
user_pref("extensions.pocket.site", "");
user_pref("reader.parse-on-load.enabled", false);

// TELEMETRY無効
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);
user_pref("default-browser-agent.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// Ping無効
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);

// WEBビーコン無効
user_pref("beacon.enabled", false);

// Google送信無効
// Ref: https://miloslav.website/blog/2020/10/26/firefox-privacy/
user_pref("browser.safebrowsing.allowOverride", false);
user_pref("browser.safebrowsing.blockedURIs.enabled", false);
user_pref("browser.safebrowsing.debug", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.timeout_ms", 15000);
user_pref("browser.safebrowsing.downloads.remote.url", "https://127.0.0.1");
user_pref("browser.safebrowsing.id", null);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.passwords.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.prefixset_max_array_size", 524288);
user_pref("browser.safebrowsing.provider.google.advisoryName", "Google Safe Browsing");
user_pref("browser.safebrowsing.provider.google.advisoryURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google.gethashURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google.lists", "");
user_pref("browser.safebrowsing.provider.google.pver", 2.2);
user_pref("browser.safebrowsing.provider.google.reportMalwareMistakeURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google.reportPhishMistakeURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google.reportURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google.updateURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.advisoryName", "Google Safe Browsing");
user_pref("browser.safebrowsing.provider.google4.advisoryURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.dataSharing.enabled", false);
user_pref("browser.safebrowsing.provider.google4.dataSharingURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.gethashURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.lastupdatetime", 1603739550029);
user_pref("browser.safebrowsing.provider.google4.lists", "");
user_pref("browser.safebrowsing.provider.google4.nextupdatetime", 1603741356029);
user_pref("browser.safebrowsing.provider.google4.pver", 4);
user_pref("browser.safebrowsing.provider.google4.reportMalwareMistakeURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.reportPhishMistakeURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.reportURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.google4.updateURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.provider.mozilla.lastupdatetime", 1603739273301);
user_pref("browser.safebrowsing.provider.mozilla.lists", "");
user_pref("browser.safebrowsing.provider.mozilla.lists.base", "moz-std");
user_pref("browser.safebrowsing.provider.mozilla.lists.content", "moz-full");
user_pref("browser.safebrowsing.provider.mozilla.nextupdatetime", 1603742873301);
user_pref("browser.safebrowsing.provider.mozilla.pver", 2.2);
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "https://127.0.0.1");
user_pref("browser.safebrowsing.reportPhishURL", "https://127.0.0.1");
user_pref("services.sync.prefs.sync.browser.safebrowsing.downloads.enabled", false);
user_pref("services.sync.prefs.sync.browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("services.sync.prefs.sync.browser.safebrowsing.malware.enabled", false);
user_pref("services.sync.prefs.sync.browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing", false);

// /****************************************************************************************
//  * Smoothfox                                                                            *
//  * "Faber est suae quisque fortunae"                                                    *
//  * priority: better scrolling                                                           *
//  * version: 10 October 2023                                                             *
//  * url: https://github.com/yokoffing/Betterfox                                          *
//  ***************************************************************************************/
// 
// // Use only one option at a time!
// // Reset prefs if you decide to use different option.
// 
// /****************************************************************************************
//  * OPTION: SHARPEN SCROLLING                                                           *
// ****************************************************************************************/
// // credit: https://github.com/black7375/Firefox-UI-Fix
// // only sharpen scrolling
// user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
// user_pref("mousewheel.min_line_scroll_amount", 10); // 10-40; adjust this number to your liking; default=5
// user_pref("general.smoothScroll.mouseWheel.durationMinMS", 80); // default=50
// user_pref("general.smoothScroll.currentVelocityWeighting", "0.15"); // default=.25
// user_pref("general.smoothScroll.stopDecelerationWeighting", "0.6"); // default=.4
// 
// /****************************************************************************************
//  * OPTION: INSTANT SCROLLING (SIMPLE ADJUSTMENT)                                       *
// ****************************************************************************************/
// // recommended for 60hz+ displays
// user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
// user_pref("general.smoothScroll", true); // DEFAULT
// user_pref("mousewheel.default.delta_multiplier_y", 275); // 250-400; adjust this number to your liking
// 
// /****************************************************************************************
//  * OPTION: SMOOTH SCROLLING                                                            *
// ****************************************************************************************/
// // recommended for 90hz+ displays
// user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
// user_pref("general.smoothScroll", true); // DEFAULT
// user_pref("general.smoothScroll.msdPhysics.enabled", true);
// user_pref("mousewheel.default.delta_multiplier_y", 300); // 250-400; adjust this number to your liking
// 
/****************************************************************************************
 * OPTION: NATURAL SMOOTH SCROLLING V3 [MODIFIED]                                      *
****************************************************************************************/
// credit: https://github.com/AveYo/fox/blob/cf56d1194f4e5958169f9cf335cd175daa48d349/Natural%20Smooth%20Scrolling%20for%20user.js
// recommended for 120hz+ displays
// largely matches Chrome flags: Windows Scrolling Personality and Smooth Scrolling
user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
user_pref("general.smoothScroll", true); // DEFAULT
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12);
user_pref("general.smoothScroll.msdPhysics.enabled", true);
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant", 600);
user_pref("general.smoothScroll.msdPhysics.regularSpringConstant", 650);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS", 25);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio", 2.0);
user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant", 250);
user_pref("general.smoothScroll.currentVelocityWeighting", 1.0);
user_pref("general.smoothScroll.stopDecelerationWeighting", 1.0);
user_pref("mousewheel.default.delta_multiplier_y", 250); // 250-400; adjust this number to your liking
