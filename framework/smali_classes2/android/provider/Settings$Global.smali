.class public final Landroid/provider/Settings$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS:Ljava/lang/String; = "activity_manager_constants"

.field public static final ADAPTIVE_BATTERY_MANAGEMENT_ENABLED:Ljava/lang/String; = "adaptive_battery_management_enabled"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"

.field public static final ADD_USERS_WHEN_LOCKED:Ljava/lang/String; = "add_users_when_locked"

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"

.field public static final ALARM_MANAGER_CONSTANTS:Ljava/lang/String; = "alarm_manager_constants"

.field public static final ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED:Ljava/lang/String; = "allow_user_switching_when_system_user_locked"

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"

.field public static final ALWAYS_ON_DISPLAY_CONSTANTS:Ljava/lang/String; = "always_on_display_constants"

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"

.field public static final ANOMALY_CONFIG:Ljava/lang/String; = "anomaly_config"

.field public static final ANOMALY_CONFIG_VERSION:Ljava/lang/String; = "anomaly_config_version"

.field public static final ANOMALY_DETECTION_CONSTANTS:Ljava/lang/String; = "anomaly_detection_constants"

.field public static final APN_DB_UPDATE_CONTENT_URL:Ljava/lang/String; = "apn_db_content_url"

.field public static final APN_DB_UPDATE_METADATA_URL:Ljava/lang/String; = "apn_db_metadata_url"

.field public static final APP_AUTO_RESTRICTION_ENABLED:Ljava/lang/String; = "app_auto_restriction_enabled"

.field private static final APP_AUTO_RESTRICTION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final APP_IDLE_CONSTANTS:Ljava/lang/String; = "app_idle_constants"

.field public static final APP_OPS_CONSTANTS:Ljava/lang/String; = "app_ops_constants"

.field public static final APP_STANDBY_ENABLED:Ljava/lang/String; = "app_standby_enabled"

.field public static final ASSISTED_GPS_ENABLED:Ljava/lang/String; = "assisted_gps_enabled"

.field public static final AUDIO_SAFE_VOLUME_STATE:Ljava/lang/String; = "audio_safe_volume_state"

.field public static final AUTOFILL_COMPAT_MODE_ALLOWED_PACKAGES:Ljava/lang/String; = "autofill_compat_mode_allowed_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final AUTO_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"

.field private static final AUTO_TIME_ZONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BACKUP_AGENT_TIMEOUT_PARAMETERS:Ljava/lang/String; = "backup_agent_timeout_parameters"

.field public static final BATTERY_DISCHARGE_DURATION_THRESHOLD:Ljava/lang/String; = "battery_discharge_duration_threshold"

.field public static final BATTERY_DISCHARGE_THRESHOLD:Ljava/lang/String; = "battery_discharge_threshold"

.field public static final BATTERY_SAVER_CONSTANTS:Ljava/lang/String; = "battery_saver_constants"

.field public static final BATTERY_SAVER_DEVICE_SPECIFIC_CONSTANTS:Ljava/lang/String; = "battery_saver_device_specific_constants"

.field public static final BATTERY_STATS_CONSTANTS:Ljava/lang/String; = "battery_stats_constants"

.field public static final BATTERY_TIP_CONSTANTS:Ljava/lang/String; = "battery_tip_constants"

.field public static final BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "ble_scan_always_enabled"

.field public static final BLE_SCAN_BACKGROUND_MODE:Ljava/lang/String; = "ble_scan_background_mode"

.field public static final BLE_SCAN_BALANCED_INTERVAL_MS:Ljava/lang/String; = "ble_scan_balanced_interval_ms"

.field public static final BLE_SCAN_BALANCED_WINDOW_MS:Ljava/lang/String; = "ble_scan_balanced_window_ms"

.field public static final BLE_SCAN_LOW_LATENCY_INTERVAL_MS:Ljava/lang/String; = "ble_scan_low_latency_interval_ms"

.field public static final BLE_SCAN_LOW_LATENCY_WINDOW_MS:Ljava/lang/String; = "ble_scan_low_latency_window_ms"

.field public static final BLE_SCAN_LOW_POWER_INTERVAL_MS:Ljava/lang/String; = "ble_scan_low_power_interval_ms"

.field public static final BLE_SCAN_LOW_POWER_WINDOW_MS:Ljava/lang/String; = "ble_scan_low_power_window_ms"

.field public static final BLOCKED_SLICES:Ljava/lang/String; = "blocked_slices"

.field public static final BLOCKING_HELPER_DISMISS_TO_VIEW_RATIO_LIMIT:Ljava/lang/String; = "blocking_helper_dismiss_to_view_ratio"

.field public static final BLOCKING_HELPER_STREAK_LIMIT:Ljava/lang/String; = "blocking_helper_streak_limit"

.field public static final BLUETOOTH_A2DP_ENABLED_LDAC_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_enabled_ldac_"

.field public static final BLUETOOTH_A2DP_OPTIONAL_CODECS_ENABLED_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_optional_codecs_enabled_"

.field public static final BLUETOOTH_A2DP_SINK_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_sink_priority_"

.field public static final BLUETOOTH_A2DP_SRC_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_src_priority_"

.field public static final BLUETOOTH_A2DP_SUPPORTS_LDAC_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_supports_ldac_"

.field public static final BLUETOOTH_A2DP_SUPPORTS_OPTIONAL_CODECS_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_supports_optional_codecs_"

.field public static final BLUETOOTH_CLASS_OF_DEVICE:Ljava/lang/String; = "bluetooth_class_of_device"

.field public static final BLUETOOTH_DISABLED_PROFILES:Ljava/lang/String; = "bluetooth_disabled_profiles"

.field public static final BLUETOOTH_HEADSET_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_headset_priority_"

.field public static final BLUETOOTH_HEADSET_VOLUME_PREFIX:Ljava/lang/String; = "bluetooth_headset_volume_"

.field public static final BLUETOOTH_HEARING_AID_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_hearing_aid_priority_"

.field public static final BLUETOOTH_INPUT_DEVICE_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_input_device_priority_"

.field public static final BLUETOOTH_INTEROPERABILITY_LIST:Ljava/lang/String; = "bluetooth_interoperability_list"

.field public static final BLUETOOTH_MAP_CLIENT_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_map_client_priority_"

.field public static final BLUETOOTH_MAP_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_map_priority_"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"

.field private static final BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BLUETOOTH_PAN_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_pan_priority_"

.field public static final BLUETOOTH_PBAP_CLIENT_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_pbap_client_priority_"

.field public static final BLUETOOTH_SAP_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_sap_priority_"

.field public static final BLUETOOTH_SECURITY_ON_CHECK:Ljava/lang/String; = "bluetooth_security_on_check"

.field public static final BOOT_COUNT:Ljava/lang/String; = "boot_count"

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"

.field private static final BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CALL_AUTO_RETRY:Ljava/lang/String; = "call_auto_retry"

.field private static final CALL_AUTO_RETRY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CALL_AUTO_ROTATION:Ljava/lang/String; = "call_auto_rotation"

.field public static final CALL_READ_CALLER_ID:Ljava/lang/String; = "call_read_caller_id"

.field public static final CALL_READ_CALLER_ID_TYPE:Ljava/lang/String; = "call_read_caller_id_type"

.field public static final CAPTIVE_PORTAL_DETECTION_ENABLED:Ljava/lang/String; = "captive_portal_detection_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:Ljava/lang/String; = "captive_portal_fallback_probe_specs"

.field public static final CAPTIVE_PORTAL_FALLBACK_URL:Ljava/lang/String; = "captive_portal_fallback_url"

.field public static final CAPTIVE_PORTAL_HTTPS_URL:Ljava/lang/String; = "captive_portal_https_url"

.field public static final CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "captive_portal_http_url"

.field public static final CAPTIVE_PORTAL_MODE:Ljava/lang/String; = "captive_portal_mode"

.field public static final CAPTIVE_PORTAL_MODE_AVOID:I = 0x2

.field public static final CAPTIVE_PORTAL_MODE_IGNORE:I = 0x0

.field public static final CAPTIVE_PORTAL_MODE_PROMPT:I = 0x1

.field public static final CAPTIVE_PORTAL_OTHER_FALLBACK_URLS:Ljava/lang/String; = "captive_portal_other_fallback_urls"

.field public static final CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "captive_portal_server"

.field public static final CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "captive_portal_user_agent"

.field public static final CAPTIVE_PORTAL_USE_HTTPS:Ljava/lang/String; = "captive_portal_use_https"

.field public static final CARRIER_APP_NAMES:Ljava/lang/String; = "carrier_app_names"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARRIER_APP_WHITELIST:Ljava/lang/String; = "carrier_app_whitelist"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARRIER_MATCHING_ALWAYS_ASK:Ljava/lang/String; = "carrier_matching_always_ask"

.field public static final CARRIER_MATCHING_STATUS:Ljava/lang/String; = "carrier_matching_status"

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"

.field public static final CDMA_CELL_BROADCAST_SMS:Ljava/lang/String; = "cdma_cell_broadcast_sms"

.field public static final CDMA_ROAMING_MODE:Ljava/lang/String; = "roaming_settings"

.field public static final CDMA_SUBSCRIPTION_MODE:Ljava/lang/String; = "subscription_mode"

.field public static final CELL_ON:Ljava/lang/String; = "cell_on"

.field public static final CERT_PIN_UPDATE_CONTENT_URL:Ljava/lang/String; = "cert_pin_content_url"

.field public static final CERT_PIN_UPDATE_METADATA_URL:Ljava/lang/String; = "cert_pin_metadata_url"

.field public static final CHAINED_BATTERY_ATTRIBUTION_ENABLED:Ljava/lang/String; = "chained_battery_attribution_enabled"

.field public static final CHARGING_SOUNDS_ENABLED:Ljava/lang/String; = "charging_sounds_enabled"

.field private static final CHARGING_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CHARGING_STARTED_SOUND:Ljava/lang/String; = "wireless_charging_started_sound"

.field public static final CHARGING_VIBRATION_ENABLED:Ljava/lang/String; = "charging_vibration_enabled"

.field private static final CHARGING_VIBRATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CMC_ACCESS_TOKEN:Ljava/lang/String; = "cmc_access_token"

.field public static final CMC_ACTIVATION:Ljava/lang/String; = "cmc_activation"

.field public static final CMC_ACTIVATION_INTERMEDIATE:Ljava/lang/String; = "cmc_activation_intermediate"

.field public static final CMC_ACTIVATION_TIME:Ljava/lang/String; = "cmc_activation_time"

.field public static final CMC_DEVICES:Ljava/lang/String; = "cmc_devices"

.field public static final CMC_DEVICE_ID:Ljava/lang/String; = "cmc_device_id"

.field public static final CMC_DEVICE_TYPE:Ljava/lang/String; = "cmc_device_type"

.field public static final CMC_LINES:Ljava/lang/String; = "cmc_lines"

.field public static final CMC_MENU_SUPPORTED:Ljava/lang/String; = "cmc_menu_supported"

.field public static final CMC_NETWORK_TYPE:Ljava/lang/String; = "cmc_network_type"

.field public static final CMC_OOBE:Ljava/lang/String; = "cmc_oobe"

.field public static final CMC_SERVICE_VERSION:Ljava/lang/String; = "cmc_service_version"

.field public static final CMC_WATCH_ACTIVATION:Ljava/lang/String; = "cmc_watch_activation"

.field public static final CMC_WATCH_DEVICE_ID:Ljava/lang/String; = "cmc_watch_device_id"

.field public static final COMPATIBILITY_MODE:Ljava/lang/String; = "compatibility_mode"

.field public static final CONNECTIVITY_CHANGE_DELAY:Ljava/lang/String; = "connectivity_change_delay"

.field public static final CONNECTIVITY_METRICS_BUFFER_SIZE:Ljava/lang/String; = "connectivity_metrics_buffer_size"

.field public static final CONNECTIVITY_SAMPLING_INTERVAL_IN_SECONDS:Ljava/lang/String; = "connectivity_sampling_interval_in_seconds"

.field public static final CONTACTS_DATABASE_WAL_ENABLED:Ljava/lang/String; = "contacts_database_wal_enabled"

.field public static final CONTACT_METADATA_SYNC:Ljava/lang/String; = "contact_metadata_sync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_METADATA_SYNC_ENABLED:Ljava/lang/String; = "contact_metadata_sync_enabled"

.field public static final CONTACT_ONLY_CONTACTS_WITH_PHONE_NUMBER:Ljava/lang/String; = "only_contact_with_phone"

.field public static final CONTACT_SWIPE_TO_CALL_MESSAGE:Ljava/lang/String; = "swipe_to_call_message"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CPU_SCALING_ENABLED:Ljava/lang/String; = "cpu_frequency_scaling_enabled"

.field public static final DATABASE_CREATION_BUILDID:Ljava/lang/String; = "database_creation_buildid"

.field public static final DATABASE_DOWNGRADE_REASON:Ljava/lang/String; = "database_downgrade_reason"

.field public static final DATA_ACTIVITY_TIMEOUT_MOBILE:Ljava/lang/String; = "data_activity_timeout_mobile"

.field public static final DATA_ACTIVITY_TIMEOUT_WIFI:Ljava/lang/String; = "data_activity_timeout_wifi"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS:Ljava/lang/String; = "data_stall_alarm_aggressive_delay_in_ms"

.field public static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS:Ljava/lang/String; = "data_stall_alarm_non_aggressive_delay_in_ms"

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"

.field public static final DEBUG_VIEW_ATTRIBUTES:Ljava/lang/String; = "debug_view_attributes"

.field public static final DEFAULT_DNS_SERVER:Ljava/lang/String; = "default_dns_server"

.field public static final DEFAULT_INSTALL_LOCATION:Ljava/lang/String; = "default_install_location"

.field public static final DEFAULT_RESTRICT_BACKGROUND_DATA:Ljava/lang/String; = "default_restrict_background_data"

.field public static final DEFAULT_SM_DP_PLUS:Ljava/lang/String; = "default_sm_dp_plus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"

.field public static final DEVELOPMENT_ENABLE_FREEFORM_WINDOWS_SUPPORT:Ljava/lang/String; = "enable_freeform_support"

.field public static final DEVELOPMENT_FORCE_RESIZABLE_ACTIVITIES:Ljava/lang/String; = "force_resizable_activities"

.field public static final DEVELOPMENT_FORCE_RTL:Ljava/lang/String; = "debug.force_rtl"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"

.field public static final DEVICE_DEMO_MODE:Ljava/lang/String; = "device_demo_mode"

.field public static final DEVICE_IDLE_CONSTANTS:Ljava/lang/String; = "device_idle_constants"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final DEVICE_POLICY_CONSTANTS:Ljava/lang/String; = "device_policy_constants"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field public static final DEVICE_PROVISIONING_MOBILE_DATA_ENABLED:Ljava/lang/String; = "device_provisioning_mobile_data"

.field public static final DISK_FREE_CHANGE_REPORTING_THRESHOLD:Ljava/lang/String; = "disk_free_change_reporting_threshold"

.field public static final DISPLAY_PANEL_LPM:Ljava/lang/String; = "display_panel_lpm"

.field public static final DISPLAY_SCALING_FORCE:Ljava/lang/String; = "display_scaling_force"

.field public static final DISPLAY_SIZE_FORCED:Ljava/lang/String; = "display_size_forced"

.field public static final DNS_RESOLVER_MAX_SAMPLES:Ljava/lang/String; = "dns_resolver_max_samples"

.field public static final DNS_RESOLVER_MIN_SAMPLES:Ljava/lang/String; = "dns_resolver_min_samples"

.field public static final DNS_RESOLVER_SAMPLE_VALIDITY_SECONDS:Ljava/lang/String; = "dns_resolver_sample_validity_seconds"

.field public static final DNS_RESOLVER_SUCCESS_THRESHOLD_PERCENT:Ljava/lang/String; = "dns_resolver_success_threshold_percent"

.field public static final DOCK_AUDIO_MEDIA_ENABLED:Ljava/lang/String; = "dock_audio_media_enabled"

.field private static final DOCK_AUDIO_MEDIA_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"

.field private static final DOCK_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOCK_SOUNDS_ENABLED_WHEN_ACCESSIBILITY:Ljava/lang/String; = "dock_sounds_enabled_when_accessbility"

.field public static final DOWNLOAD_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_max_bytes_over_mobile"

.field public static final DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_recommended_max_bytes_over_mobile"

.field public static final DROPBOX_AGE_SECONDS:Ljava/lang/String; = "dropbox_age_seconds"

.field public static final DROPBOX_MAX_FILES:Ljava/lang/String; = "dropbox_max_files"

.field public static final DROPBOX_QUOTA_KB:Ljava/lang/String; = "dropbox_quota_kb"

.field public static final DROPBOX_QUOTA_PERCENT:Ljava/lang/String; = "dropbox_quota_percent"

.field public static final DROPBOX_RESERVE_PERCENT:Ljava/lang/String; = "dropbox_reserve_percent"

.field public static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field public static final EDGE_ENABLE:Ljava/lang/String; = "edge_enable"

.field public static final EMERGENCY_AFFORDANCE_NEEDED:Ljava/lang/String; = "emergency_affordance_needed"

.field public static final EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final EMERGENCY_TONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final EMULATE_DISPLAY_CUTOUT:Ljava/lang/String; = "emulate_display_cutout"

.field public static final EMULATE_DISPLAY_CUTOUT_OFF:I = 0x0

.field public static final EMULATE_DISPLAY_CUTOUT_ON:I = 0x1

.field public static final ENABLE_ACCESSIBILITY_GLOBAL_GESTURE_ENABLED:Ljava/lang/String; = "enable_accessibility_global_gesture_enabled"

.field public static final ENABLE_CACHE_QUOTA_CALCULATION:Ljava/lang/String; = "enable_cache_quota_calculation"

.field public static final ENABLE_CELLULAR_ON_BOOT:Ljava/lang/String; = "enable_cellular_on_boot"

.field public static final ENABLE_DELETION_HELPER_NO_THRESHOLD_TOGGLE:Ljava/lang/String; = "enable_deletion_helper_no_threshold_toggle"

.field public static final ENABLE_DISKSTATS_LOGGING:Ljava/lang/String; = "enable_diskstats_logging"

.field public static final ENABLE_EPHEMERAL_FEATURE:Ljava/lang/String; = "enable_ephemeral_feature"

.field public static final ENABLE_GNSS_RAW_MEAS_FULL_TRACKING:Ljava/lang/String; = "enable_gnss_raw_meas_full_tracking"

.field public static final ENABLE_GPU_DEBUG_LAYERS:Ljava/lang/String; = "enable_gpu_debug_layers"

.field public static final ENCODED_SURROUND_OUTPUT:Ljava/lang/String; = "encoded_surround_output"

.field public static final ENCODED_SURROUND_OUTPUT_ALWAYS:I = 0x2

.field public static final ENCODED_SURROUND_OUTPUT_AUTO:I = 0x0

.field public static final ENCODED_SURROUND_OUTPUT_ENABLED_FORMATS:Ljava/lang/String; = "encoded_surround_output_enabled_formats"

.field private static final ENCODED_SURROUND_OUTPUT_ENABLED_FORMATS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENCODED_SURROUND_OUTPUT_MANUAL:I = 0x3

.field public static final ENCODED_SURROUND_OUTPUT_NEVER:I = 0x1

.field private static final ENCODED_SURROUND_OUTPUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EPHEMERAL_COOKIE_MAX_SIZE_BYTES:Ljava/lang/String; = "ephemeral_cookie_max_size_bytes"

.field public static final ERROR_LOGCAT_PREFIX:Ljava/lang/String; = "logcat_for_"

.field public static final EUICC_FACTORY_RESET_TIMEOUT_MILLIS:Ljava/lang/String; = "euicc_factory_reset_timeout_millis"

.field public static final EUICC_PROVISIONED:Ljava/lang/String; = "euicc_provisioned"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_SUPPORTED_COUNTRIES:Ljava/lang/String; = "euicc_supported_countries"

.field public static final FANCY_IME_ANIMATIONS:Ljava/lang/String; = "fancy_ime_animations"

.field public static final FIRST_SIM_BRIGHTNESS_FLAG:Ljava/lang/String; = "first_sim_brightness_flag"

.field public static final FORCED_APP_STANDBY_ENABLED:Ljava/lang/String; = "forced_app_standby_enabled"

.field public static final FORCED_APP_STANDBY_FOR_SMALL_BATTERY_ENABLED:Ljava/lang/String; = "forced_app_standby_for_small_battery_enabled"

.field public static final FORCE_ALLOW_ON_EXTERNAL:Ljava/lang/String; = "force_allow_on_external"

.field public static final FPS_DEVISOR:Ljava/lang/String; = "fps_divisor"

.field public static final FSTRIM_MANDATORY_INTERVAL:Ljava/lang/String; = "fstrim_mandatory_interval"

.field public static final GLOBAL_HTTP_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global_http_proxy_exclusion_list"

.field public static final GLOBAL_HTTP_PROXY_HOST:Ljava/lang/String; = "global_http_proxy_host"

.field public static final GLOBAL_HTTP_PROXY_PAC:Ljava/lang/String; = "global_proxy_pac_url"

.field public static final GLOBAL_HTTP_PROXY_PASSWORD:Ljava/lang/String; = "global_http_proxy_password"

.field public static final GLOBAL_HTTP_PROXY_PORT:Ljava/lang/String; = "global_http_proxy_port"

.field public static final GLOBAL_HTTP_PROXY_USERNAME:Ljava/lang/String; = "global_http_proxy_username"

.field public static final GNSS_HAL_LOCATION_REQUEST_DURATION_MILLIS:Ljava/lang/String; = "gnss_hal_location_request_duration_millis"

.field public static final GNSS_SATELLITE_BLACKLIST:Ljava/lang/String; = "gnss_satellite_blacklist"

.field public static final GPRS_REGISTER_CHECK_PERIOD_MS:Ljava/lang/String; = "gprs_register_check_period_ms"

.field public static final GPU_DEBUG_APP:Ljava/lang/String; = "gpu_debug_app"

.field public static final GPU_DEBUG_LAYERS:Ljava/lang/String; = "gpu_debug_layers"

.field public static final HDMI_CONTROL_AUTO_DEVICE_OFF_ENABLED:Ljava/lang/String; = "hdmi_control_auto_device_off_enabled"

.field public static final HDMI_CONTROL_AUTO_WAKEUP_ENABLED:Ljava/lang/String; = "hdmi_control_auto_wakeup_enabled"

.field public static final HDMI_CONTROL_ENABLED:Ljava/lang/String; = "hdmi_control_enabled"

.field public static final HDMI_SYSTEM_AUDIO_CONTROL_ENABLED:Ljava/lang/String; = "hdmi_system_audio_control_enabled"

.field public static final HEADS_UP_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "heads_up_notifications_enabled"

.field public static final HEADS_UP_OFF:I = 0x0

.field public static final HEADS_UP_ON:I = 0x1

.field public static final HIDDEN_API_ACCESS_LOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_log_sampling_rate"

.field public static final HIDDEN_API_BLACKLIST_EXEMPTIONS:Ljava/lang/String; = "hidden_api_blacklist_exemptions"

.field public static final HIDDEN_API_POLICY_PRE_P_APPS:Ljava/lang/String; = "hidden_api_policy_pre_p_apps"

.field public static final HIDDEN_API_POLICY_P_APPS:Ljava/lang/String; = "hidden_api_policy_p_apps"

.field public static final HIDE_ERROR_DIALOGS:Ljava/lang/String; = "hide_error_dialogs"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"

.field public static final INET_CONDITION_DEBOUNCE_DOWN_DELAY:Ljava/lang/String; = "inet_condition_debounce_down_delay"

.field public static final INET_CONDITION_DEBOUNCE_UP_DELAY:Ljava/lang/String; = "inet_condition_debounce_up_delay"

.field public static final INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:Ljava/lang/String; = "installed_instant_app_max_cache_period"

.field public static final INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:Ljava/lang/String; = "installed_instant_app_min_cache_period"

.field public static final INSTALL_CARRIER_APP_NOTIFICATION_PERSISTENT:Ljava/lang/String; = "install_carrier_app_notification_persistent"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_CARRIER_APP_NOTIFICATION_SLEEP_MILLIS:Ljava/lang/String; = "install_carrier_app_notification_sleep_millis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANT_APP_DEXOPT_ENABLED:Ljava/lang/String; = "instant_app_dexopt_enabled"

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTENT_FIREWALL_UPDATE_CONTENT_URL:Ljava/lang/String; = "intent_firewall_content_url"

.field public static final INTENT_FIREWALL_UPDATE_METADATA_URL:Ljava/lang/String; = "intent_firewall_metadata_url"

.field public static final JOB_SCHEDULER_CONSTANTS:Ljava/lang/String; = "job_scheduler_constants"

.field public static final KEEP_PROFILE_IN_BACKGROUND:Ljava/lang/String; = "keep_profile_in_background"

.field public static final KEY_CALL_REMINDER:Ljava/lang/String; = "call_reminder"

.field public static final LANG_ID_UPDATE_CONTENT_URL:Ljava/lang/String; = "lang_id_content_url"

.field public static final LANG_ID_UPDATE_METADATA_URL:Ljava/lang/String; = "lang_id_metadata_url"

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_BACKGROUND_THROTTLE_INTERVAL_MS:Ljava/lang/String; = "location_background_throttle_interval_ms"

.field public static final LOCATION_BACKGROUND_THROTTLE_PACKAGE_WHITELIST:Ljava/lang/String; = "location_background_throttle_package_whitelist"

.field public static final LOCATION_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:Ljava/lang/String; = "location_background_throttle_proximity_alert_interval_ms"

.field public static final LOCATION_GLOBAL_KILL_SWITCH:Ljava/lang/String; = "location_global_kill_switch"

.field public static final LOCATION_SETTINGS_LINK_TO_PERMISSIONS_ENABLED:Ljava/lang/String; = "location_settings_link_to_permissions_enabled"

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"

.field public static final LOW_BATTERY_SOUND_TIMEOUT:Ljava/lang/String; = "low_battery_sound_timeout"

.field public static final LOW_POWER_MODE:Ljava/lang/String; = "low_power"

.field public static final LOW_POWER_MODE_BACK_DATA_OFF:Ljava/lang/String; = "low_power_back_data_off"

.field public static final LOW_POWER_MODE_STICKY:Ljava/lang/String; = "low_power_sticky"

.field public static final LOW_POWER_MODE_SUGGESTION_PARAMS:Ljava/lang/String; = "low_power_mode_suggestion_params"

.field public static final LOW_POWER_MODE_TRIGGER_LEVEL:Ljava/lang/String; = "low_power_trigger_level"

.field public static final LOW_POWER_MODE_TRIGGER_LEVEL_MAX:Ljava/lang/String; = "low_power_trigger_level_max"

.field private static final LOW_POWER_MODE_TRIGGER_LEVEL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LTE_SERVICE_FORCED:Ljava/lang/String; = "lte_service_forced"

.field public static final MAX_NOTIFICATION_ENQUEUE_RATE:Ljava/lang/String; = "max_notification_enqueue_rate"

.field public static final MAX_SOUND_TRIGGER_DETECTION_SERVICE_OPS_PER_DAY:Ljava/lang/String; = "max_sound_trigger_detection_service_ops_per_day"

.field public static final MDC_INITIAL_MAX_RETRY:Ljava/lang/String; = "mdc_initial_max_retry"

.field public static final MHL_INPUT_SWITCHING_ENABLED:Ljava/lang/String; = "mhl_input_switching_enabled"

.field public static final MHL_POWER_CHARGE_ENABLED:Ljava/lang/String; = "mhl_power_charge_enabled"

.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final MOBILE_DATA_ALWAYS_ON:Ljava/lang/String; = "mobile_data_always_on"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTI_SIM_DATACROSS_SLOT:Ljava/lang/String; = "multi_sim_datacross_slot"

.field public static final MULTI_SIM_DATA_CALL_SLOT:Ljava/lang/String; = "multi_sim_data_call_slot"

.field public static final MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_data_call"

.field public static final MULTI_SIM_DDS_PROGRESSING:Ljava/lang/String; = "multi_sim_dds_progressing"

.field public static final MULTI_SIM_SMS_PROMPT:Ljava/lang/String; = "multi_sim_sms_prompt"

.field public static final MULTI_SIM_SMS_SLOT:Ljava/lang/String; = "multi_sim_sms_slot"

.field public static final MULTI_SIM_SMS_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_sms"

.field public static final MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

.field public static final MULTI_SIM_VOICE_CALL_SLOT:Ljava/lang/String; = "multi_sim_voice_call_slot"

.field public static final MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_voice_call"

.field public static final MULTI_SIM_VOICE_PROMPT:Ljava/lang/String; = "multi_sim_voice_prompt"

.field public static final NAVIGATIONBAR_COLOR:Ljava/lang/String; = "navigationbar_color"

.field public static final NAVIGATIONBAR_CURRENT_COLOR:Ljava/lang/String; = "navigationbar_current_color"

.field public static final NAVIGATIONBAR_FORCE_TOUCH_ENABLE:Ljava/lang/String; = "navigationbar_force_touch_enable"

.field public static final NAVIGATIONBAR_GESTURE_HINT:Ljava/lang/String; = "navigation_bar_gesture_hint"

.field public static final NAVIGATIONBAR_HIDE_BAR:Ljava/lang/String; = "navigationbar_hide_bar"

.field public static final NAVIGATIONBAR_HIDE_BAR_ENABLED:Ljava/lang/String; = "navigationbar_hide_bar_enabled"

.field public static final NAVIGATIONBAR_KEY_ORDER:Ljava/lang/String; = "navigationbar_key_order"

.field public static final NAVIGATIONBAR_PRESSURE_USER_LEVEL:Ljava/lang/String; = "navigationbar_pressure_user_level"

.field public static final NAVIGATIONBAR_RECENTLY_USED_COLOR:Ljava/lang/String; = "navigationbar_recently_used_color"

.field public static final NAVIGATIONBAR_THEME_COLOR:Ljava/lang/String; = "navigationbar_theme_color"

.field public static final NAVIGATIONBAR_UNLOCK_WITH_HOME_BUTTON:Ljava/lang/String; = "navigationbar_unlock_with_home_button"

.field public static final NAVIGATIONBAR_USE_THEME_DEFAULT:Ljava/lang/String; = "navigationbar_use_theme_default"

.field public static final NAVIGATION_BAR_GESTURE_WHILE_HIDDEN:Ljava/lang/String; = "navigation_bar_gesture_while_hidden"

.field public static final NETPOLICY_OVERRIDE_ENABLED:Ljava/lang/String; = "netpolicy_override_enabled"

.field public static final NETPOLICY_QUOTA_ENABLED:Ljava/lang/String; = "netpolicy_quota_enabled"

.field public static final NETPOLICY_QUOTA_FRAC_JOBS:Ljava/lang/String; = "netpolicy_quota_frac_jobs"

.field public static final NETPOLICY_QUOTA_FRAC_MULTIPATH:Ljava/lang/String; = "netpolicy_quota_frac_multipath"

.field public static final NETPOLICY_QUOTA_LIMITED:Ljava/lang/String; = "netpolicy_quota_limited"

.field public static final NETPOLICY_QUOTA_UNLIMITED:Ljava/lang/String; = "netpolicy_quota_unlimited"

.field public static final NETSTATS_AUGMENT_ENABLED:Ljava/lang/String; = "netstats_augment_enabled"

.field public static final NETSTATS_DEV_BUCKET_DURATION:Ljava/lang/String; = "netstats_dev_bucket_duration"

.field public static final NETSTATS_DEV_DELETE_AGE:Ljava/lang/String; = "netstats_dev_delete_age"

.field public static final NETSTATS_DEV_PERSIST_BYTES:Ljava/lang/String; = "netstats_dev_persist_bytes"

.field public static final NETSTATS_DEV_ROTATE_AGE:Ljava/lang/String; = "netstats_dev_rotate_age"

.field public static final NETSTATS_ENABLED:Ljava/lang/String; = "netstats_enabled"

.field public static final NETSTATS_GLOBAL_ALERT_BYTES:Ljava/lang/String; = "netstats_global_alert_bytes"

.field public static final NETSTATS_POLL_INTERVAL:Ljava/lang/String; = "netstats_poll_interval"

.field public static final NETSTATS_SAMPLE_ENABLED:Ljava/lang/String; = "netstats_sample_enabled"

.field public static final NETSTATS_TIME_CACHE_MAX_AGE:Ljava/lang/String; = "netstats_time_cache_max_age"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETSTATS_UID_BUCKET_DURATION:Ljava/lang/String; = "netstats_uid_bucket_duration"

.field public static final NETSTATS_UID_DELETE_AGE:Ljava/lang/String; = "netstats_uid_delete_age"

.field public static final NETSTATS_UID_PERSIST_BYTES:Ljava/lang/String; = "netstats_uid_persist_bytes"

.field public static final NETSTATS_UID_ROTATE_AGE:Ljava/lang/String; = "netstats_uid_rotate_age"

.field public static final NETSTATS_UID_TAG_BUCKET_DURATION:Ljava/lang/String; = "netstats_uid_tag_bucket_duration"

.field public static final NETSTATS_UID_TAG_DELETE_AGE:Ljava/lang/String; = "netstats_uid_tag_delete_age"

.field public static final NETSTATS_UID_TAG_PERSIST_BYTES:Ljava/lang/String; = "netstats_uid_tag_persist_bytes"

.field public static final NETSTATS_UID_TAG_ROTATE_AGE:Ljava/lang/String; = "netstats_uid_tag_rotate_age"

.field public static final NETWORK_ACCESS_TIMEOUT_MS:Ljava/lang/String; = "network_access_timeout_ms"

.field public static final NETWORK_AVOID_BAD_WIFI:Ljava/lang/String; = "network_avoid_bad_wifi"

.field public static final NETWORK_DEFAULT_DAILY_MULTIPATH_QUOTA_BYTES:Ljava/lang/String; = "network_default_daily_multipath_quota_bytes"

.field public static final NETWORK_METERED_MULTIPATH_PREFERENCE:Ljava/lang/String; = "network_metered_multipath_preference"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"

.field public static final NETWORK_RECOMMENDATIONS_ENABLED:Ljava/lang/String; = "network_recommendations_enabled"

.field private static final NETWORK_RECOMMENDATIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NETWORK_RECOMMENDATIONS_PACKAGE:Ljava/lang/String; = "network_recommendations_package"

.field public static final NETWORK_RECOMMENDATION_REQUEST_TIMEOUT_MS:Ljava/lang/String; = "network_recommendation_request_timeout_ms"

.field public static final NETWORK_SCORER_APP:Ljava/lang/String; = "network_scorer_app"

.field public static final NETWORK_SCORING_PROVISIONED:Ljava/lang/String; = "network_scoring_provisioned"

.field public static final NETWORK_SCORING_UI_ENABLED:Ljava/lang/String; = "network_scoring_ui_enabled"

.field public static final NETWORK_SWITCH_NOTIFICATION_DAILY_LIMIT:Ljava/lang/String; = "network_switch_notification_daily_limit"

.field public static final NETWORK_SWITCH_NOTIFICATION_RATE_LIMIT_MILLIS:Ljava/lang/String; = "network_switch_notification_rate_limit_millis"

.field public static final NETWORK_WATCHLIST_ENABLED:Ljava/lang/String; = "network_watchlist_enabled"

.field public static final NETWORK_WATCHLIST_LAST_REPORT_TIME:Ljava/lang/String; = "network_watchlist_last_report_time"

.field public static final NEW_CONTACT_AGGREGATOR:Ljava/lang/String; = "new_contact_aggregator"

.field public static final NIGHT_DISPLAY_FORCED_AUTO_MODE_AVAILABLE:Ljava/lang/String; = "night_display_forced_auto_mode_available"

.field public static final NITZ_UPDATE_DIFF:Ljava/lang/String; = "nitz_update_diff"

.field public static final NITZ_UPDATE_SPACING:Ljava/lang/String; = "nitz_update_spacing"

.field public static final NOTIFICATION_SNOOZE_OPTIONS:Ljava/lang/String; = "notification_snooze_options"

.field public static final NSD_ON:Ljava/lang/String; = "nsd_on"

.field public static final NTP_SERVER:Ljava/lang/String; = "ntp_server"

.field public static final NTP_TIMEOUT:Ljava/lang/String; = "ntp_timeout"

.field public static final OTA_DISABLE_AUTOMATIC_UPDATE:Ljava/lang/String; = "ota_disable_automatic_update"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "overlay_display_devices"

.field public static final OVERRIDE_SETTINGS_PROVIDER_RESTORE_ANY_VERSION:Ljava/lang/String; = "override_settings_provider_restore_any_version"

.field public static final PACKAGE_VERIFIER_DEFAULT_RESPONSE:Ljava/lang/String; = "verifier_default_response"

.field public static final PACKAGE_VERIFIER_ENABLE:Ljava/lang/String; = "package_verifier_enable"

.field public static final PACKAGE_VERIFIER_INCLUDE_ADB:Ljava/lang/String; = "verifier_verify_adb_installs"

.field public static final PACKAGE_VERIFIER_SETTING_VISIBLE:Ljava/lang/String; = "verifier_setting_visible"

.field public static final PACKAGE_VERIFIER_TIMEOUT:Ljava/lang/String; = "verifier_timeout"

.field public static final PAC_CHANGE_DELAY:Ljava/lang/String; = "pac_change_delay"

.field public static final PDP_WATCHDOG_ERROR_POLL_COUNT:Ljava/lang/String; = "pdp_watchdog_error_poll_count"

.field public static final PDP_WATCHDOG_ERROR_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_error_poll_interval_ms"

.field public static final PDP_WATCHDOG_LONG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_long_poll_interval_ms"

.field public static final PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT:Ljava/lang/String; = "pdp_watchdog_max_pdp_reset_fail_count"

.field public static final PDP_WATCHDOG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_poll_interval_ms"

.field public static final PDP_WATCHDOG_TRIGGER_PACKET_COUNT:Ljava/lang/String; = "pdp_watchdog_trigger_packet_count"

.field public static final POLICY_CONTROL:Ljava/lang/String; = "policy_control"

.field public static final POWER_KEY_MAPPING:Ljava/lang/String; = "power_key_mapping"

.field public static final POWER_MANAGER_CONSTANTS:Ljava/lang/String; = "power_manager_constants"

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"

.field private static final POWER_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PREFERRED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode"

.field public static final PRIVATE_DNS_DEFAULT_MODE:Ljava/lang/String; = "private_dns_default_mode"

.field public static final PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PRIVATE_DNS_SPECIFIER:Ljava/lang/String; = "private_dns_specifier"

.field private static final PRIVATE_DNS_SPECIFIER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PRIV_APP_OOB_ENABLED:Ljava/lang/String; = "priv_app_oob_enabled"

.field public static final PRIV_APP_OOB_LIST:Ljava/lang/String; = "priv_app_oob_list"

.field public static final PROVISIONING_APN_ALARM_DELAY_IN_MS:Ljava/lang/String; = "provisioning_apn_alarm_delay_in_ms"

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"

.field public static final READ_EXTERNAL_STORAGE_ENFORCED_DEFAULT:Ljava/lang/String; = "read_external_storage_enforced_default"

.field public static final RECOMMENDED_NETWORK_EVALUATOR_CACHE_EXPIRY_MS:Ljava/lang/String; = "recommended_network_evaluator_cache_expiry_ms"

.field public static final REQUIRE_PASSWORD_TO_DECRYPT:Ljava/lang/String; = "require_password_to_decrypt"

.field public static final SAFE_BOOT_DISALLOWED:Ljava/lang/String; = "safe_boot_disallowed"

.field public static final SAFE_WIFI:Ljava/lang/String; = "safe_wifi"

.field public static final SEHOME_PORTRAIT_MODE_ONLY:Ljava/lang/String; = "sehome_portrait_mode_only"

.field public static final SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field public static final SELINUX_UPDATE_CONTENT_URL:Ljava/lang/String; = "selinux_content_url"

.field public static final SELINUX_UPDATE_METADATA_URL:Ljava/lang/String; = "selinux_metadata_url"

.field public static final SEM_ADAPTIVE_BATTERY_MANAGEMENT_ENABLED:Ljava/lang/String; = "adaptive_battery_management_enabled"

.field public static final SEM_AUTO_BRIGHTNESS_LIMIT:Ljava/lang/String; = "auto_brightness_limit"

.field public static final SEM_AUTO_WIFI_FAVORITE_AP_COUNT:Ljava/lang/String; = "sem_auto_wifi_favorite_ap_count"

.field public static final SEM_AUTO_WIFI_LAST_USER_STATE:Ljava/lang/String; = "sem_auto_wifi_last_user_state"

.field public static final SEM_FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final SEM_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final SEM_NAVIGATIONBAR_CURRENT_COLOR:Ljava/lang/String; = "navigationbar_current_color"

.field public static final SEM_NAVIGATIONBAR_THEME_COLOR:Ljava/lang/String; = "navigationbar_theme_color"

.field public static final SEM_NAVIGATIONBAR_USE_THEME_DEFAULT:Ljava/lang/String; = "navigationbar_use_theme_default"

.field public static final SEM_PACKAGE_VERIFIER_ENABLE:Ljava/lang/String; = "package_verifier_enable"

.field public static final SEM_WIFI_DISPLAY_ON:Ljava/lang/String; = "wifi_display_on"

.field public static final SEM_WIFI_P2P_DEVICE_NAME:Ljava/lang/String; = "wifi_p2p_device_name"

.field public static final SEM_WIFI_RECOMMEND_LEARNING_SCORE:Ljava/lang/String; = "sem_wifi_recommend_learning_score"

.field public static final SEM_WIFI_RECOMMEND_MANUAL_CONNECT_COUNT:Ljava/lang/String; = "sem_wifi_recommend_manual_connect_count"

.field public static final SEM_WIFI_RECOMMEND_NETWORK_USER_LEVEL:Ljava/lang/String; = "sem_wifi_recommend_network_user_level"

.field public static final SEM_WIFI_VI_EFFECT_FOR_SETTINGS:Ljava/lang/String; = "sem_wifi_vi_effect_for_settings"

.field public static final SEND_ACTION_APP_ERROR:Ljava/lang/String; = "send_action_app_error"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_PREPAID_DATA_SERVICE_URL:Ljava/lang/String; = "setup_prepaid_data_service_url"

.field public static final SETUP_PREPAID_DETECTION_REDIR_HOST:Ljava/lang/String; = "setup_prepaid_detection_redir_host"

.field public static final SETUP_PREPAID_DETECTION_TARGET_URL:Ljava/lang/String; = "setup_prepaid_detection_target_url"

.field public static final SET_GLOBAL_HTTP_PROXY:Ljava/lang/String; = "set_global_http_proxy"

.field public static final SET_INSTALL_LOCATION:Ljava/lang/String; = "set_install_location"

.field public static final SHORTCUT_MANAGER_CONSTANTS:Ljava/lang/String; = "shortcut_manager_constants"

.field public static final SHOW_FIRST_CRASH_DIALOG:Ljava/lang/String; = "show_first_crash_dialog"

.field public static final SHOW_MUTE_IN_CRASH_DIALOG:Ljava/lang/String; = "show_mute_in_crash_dialog"

.field public static final SHOW_NOTIFICATION_CHANNEL_WARNINGS:Ljava/lang/String; = "show_notification_channel_warnings"

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_RESTART_IN_CRASH_DIALOG:Ljava/lang/String; = "show_restart_in_crash_dialog"

.field public static final SHOW_TEMPERATURE_WARNING:Ljava/lang/String; = "show_temperature_warning"

.field public static final SHOW_ZEN_SETTINGS_SUGGESTION:Ljava/lang/String; = "show_zen_settings_suggestion"

.field public static final SHOW_ZEN_UPGRADE_NOTIFICATION:Ljava/lang/String; = "show_zen_upgrade_notification"

.field public static final SMART_REPLIES_IN_NOTIFICATIONS_FLAGS:Ljava/lang/String; = "smart_replies_in_notifications_flags"

.field public static final SMART_SELECTION_UPDATE_CONTENT_URL:Ljava/lang/String; = "smart_selection_content_url"

.field public static final SMART_SELECTION_UPDATE_METADATA_URL:Ljava/lang/String; = "smart_selection_metadata_url"

.field public static final SMS_OUTGOING_CHECK_INTERVAL_MS:Ljava/lang/String; = "sms_outgoing_check_interval_ms"

.field public static final SMS_OUTGOING_CHECK_MAX_COUNT:Ljava/lang/String; = "sms_outgoing_check_max_count"

.field public static final SMS_SHORT_CODES_UPDATE_CONTENT_URL:Ljava/lang/String; = "sms_short_codes_content_url"

.field public static final SMS_SHORT_CODES_UPDATE_METADATA_URL:Ljava/lang/String; = "sms_short_codes_metadata_url"

.field public static final SMS_SHORT_CODE_CONFIRMATION:Ljava/lang/String; = "sms_short_code_confirmation"

.field public static final SMS_SHORT_CODE_RULE:Ljava/lang/String; = "sms_short_code_rule"

.field public static final SOFT_AP_TIMEOUT_ENABLED:Ljava/lang/String; = "soft_ap_timeout_enabled"

.field private static final SOFT_AP_TIMEOUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SOUND_TRIGGER_DETECTION_SERVICE_OP_TIMEOUT:Ljava/lang/String; = "sound_trigger_detection_service_op_timeout"

.field public static final SPAM_CALL_MUTE_FIRST_RING:Ljava/lang/String; = "spam_call_mute_first_ring"

.field public static final SPEED_LABEL_CACHE_EVICTION_AGE_MILLIS:Ljava/lang/String; = "speed_label_cache_eviction_age_millis"

.field public static final SQLITE_COMPATIBILITY_WAL_FLAGS:Ljava/lang/String; = "sqlite_compatibility_wal_flags"

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"

.field private static final STAY_ON_WHILE_PLUGGED_IN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final STORAGE_BENCHMARK_INTERVAL:Ljava/lang/String; = "storage_benchmark_interval"

.field public static final STORAGE_SETTINGS_CLOBBER_THRESHOLD:Ljava/lang/String; = "storage_settings_clobber_threshold"

.field public static final SWAP_ENABLED:Ljava/lang/String; = "swap_enabled"

.field public static final SYNC_MANAGER_CONSTANTS:Ljava/lang/String; = "sync_manager_constants"

.field public static final SYNC_MAX_RETRY_DELAY_IN_SECONDS:Ljava/lang/String; = "sync_max_retry_delay_in_seconds"

.field public static final SYS_FREE_STORAGE_LOG_INTERVAL:Ljava/lang/String; = "sys_free_storage_log_interval"

.field public static final SYS_STORAGE_CACHE_MAX_BYTES:Ljava/lang/String; = "sys_storage_cache_max_bytes"

.field public static final SYS_STORAGE_CACHE_PERCENTAGE:Ljava/lang/String; = "sys_storage_cache_percentage"

.field public static final SYS_STORAGE_FULL_THRESHOLD_BYTES:Ljava/lang/String; = "sys_storage_full_threshold_bytes"

.field public static final SYS_STORAGE_THRESHOLD_MAX_BYTES:Ljava/lang/String; = "sys_storage_threshold_max_bytes"

.field public static final SYS_STORAGE_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "sys_storage_threshold_percentage"

.field public static final SYS_TRACED:Ljava/lang/String; = "sys_traced"

.field public static final SYS_UIDCPUPOWER:Ljava/lang/String; = "sys_uidcpupower"

.field public static final SYS_VDSO:Ljava/lang/String; = "sys_vdso"

.field public static final TAP_TO_ICON:Ljava/lang/String; = "tap_to_icon"

.field public static final TCP_DEFAULT_INIT_RWND:Ljava/lang/String; = "tcp_default_init_rwnd"

.field public static final TETHERING_BLOCKED:Ljava/lang/String; = "tethering_blocked"

.field public static final TETHER_DUN_APN:Ljava/lang/String; = "tether_dun_apn"

.field public static final TETHER_DUN_REQUIRED:Ljava/lang/String; = "tether_dun_required"

.field public static final TETHER_OFFLOAD_DISABLED:Ljava/lang/String; = "tether_offload_disabled"

.field public static final TETHER_SUPPORTED:Ljava/lang/String; = "tether_supported"

.field public static final TEXT_CLASSIFIER_CONSTANTS:Ljava/lang/String; = "text_classifier_constants"

.field public static final THEATER_MODE_ON:Ljava/lang/String; = "theater_mode_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TIME_ONLY_MODE_CONSTANTS:Ljava/lang/String; = "time_only_mode_constants"

.field public static final TRANSIENT_SETTINGS:[Ljava/lang/String;

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"

.field public static final TRUSTED_SOUND:Ljava/lang/String; = "trusted_sound"

.field public static final TZINFO_UPDATE_CONTENT_URL:Ljava/lang/String; = "tzinfo_content_url"

.field public static final TZINFO_UPDATE_METADATA_URL:Ljava/lang/String; = "tzinfo_metadata_url"

.field public static final UNGAZE_SLEEP_ENABLED:Ljava/lang/String; = "ungaze_sleep_enabled"

.field public static final UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:Ljava/lang/String; = "uninstalled_instant_app_max_cache_period"

.field public static final UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:Ljava/lang/String; = "uninstalled_instant_app_min_cache_period"

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"

.field public static final UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:Ljava/lang/String; = "unused_static_shared_lib_min_cache_period"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"

.field private static final USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final USER_ABSENT_RADIOS_OFF_FOR_SMALL_BATTERY_ENABLED:Ljava/lang/String; = "user_absent_radios_off_for_small_battery_enabled"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"

.field public static final USE_OPEN_WIFI_PACKAGE:Ljava/lang/String; = "use_open_wifi_package"

.field private static final USE_OPEN_WIFI_PACKAGE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/SettingsValidators$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"

.field public static final WARNING_TEMPERATURE:Ljava/lang/String; = "warning_temperature"

.field public static final WEBVIEW_DATA_REDUCTION_PROXY_KEY:Ljava/lang/String; = "webview_data_reduction_proxy_key"

.field public static final WEBVIEW_FALLBACK_LOGIC_ENABLED:Ljava/lang/String; = "webview_fallback_logic_enabled"

.field public static final WEBVIEW_MULTIPROCESS:Ljava/lang/String; = "webview_multiprocess"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WEBVIEW_PROVIDER:Ljava/lang/String; = "webview_provider"

.field public static final WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ADAPTIVE_WIFI_CONTROL_ENABLED:Ljava/lang/String; = "sem_auto_wifi_control_enabled"

.field public static final WIFI_BADGING_THRESHOLDS:Ljava/lang/String; = "wifi_badging_thresholds"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_BOUNCE_DELAY_OVERRIDE_MS:Ljava/lang/String; = "wifi_bounce_delay_override_ms"

.field public static final WIFI_CARRIER_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_carrier_networks_available_notification_on"

.field private static final WIFI_CARRIER_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_CONNECTED_MAC_RANDOMIZATION_ENABLED:Ljava/lang/String; = "wifi_connected_mac_randomization_enabled"

.field public static final WIFI_COUNTRY_CODE:Ljava/lang/String; = "wifi_country_code"

.field public static final WIFI_DEVICE_OWNER_CONFIGS_LOCKDOWN:Ljava/lang/String; = "wifi_device_owner_configs_lockdown"

.field public static final WIFI_DISPLAY_CERTIFICATION_ON:Ljava/lang/String; = "wifi_display_certification_on"

.field public static final WIFI_DISPLAY_ON:Ljava/lang/String; = "wifi_display_on"

.field public static final WIFI_DISPLAY_WPS_CONFIG:Ljava/lang/String; = "wifi_display_wps_config"

.field public static final WIFI_ENHANCED_AUTO_JOIN:Ljava/lang/String; = "wifi_enhanced_auto_join"

.field public static final WIFI_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:Ljava/lang/String; = "wifi_ephemeral_out_of_range_timeout_ms"

.field public static final WIFI_FRAMEWORK_SCAN_INTERVAL_MS:Ljava/lang/String; = "wifi_framework_scan_interval_ms"

.field public static final WIFI_FREQUENCY_BAND:Ljava/lang/String; = "wifi_frequency_band"

.field public static final WIFI_GUIDER_FEATURE_CONTROL:Ljava/lang/String; = "wifi_guider_feature_control"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"

.field public static final WIFI_IWC_BACKUP_AGGRESSIVE_MODE_ON:Ljava/lang/String; = "wifi_iwc_backup_aggressive_mode_on"

.field public static final WIFI_IWC_TRANSFER_STARTED:Ljava/lang/String; = "wifi_iwc_transfer_started"

.field public static final WIFI_IWC_USER_DATA_PREFERENCE:Ljava/lang/String; = "wifi_iwc_user_data_preference"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"

.field private static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NETWORK_SHOW_RSSI:Ljava/lang/String; = "wifi_network_show_rssi"

.field public static final WIFI_NUM_OF_SWITCH_TO_MOBILE_DATA_TOGGLE:Ljava/lang/String; = "wifi_num_of_switch_to_mobile_data_toggle"

.field private static final WIFI_NUM_OF_SWITCH_TO_MOBILE_DATA_TOGGLE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"

.field private static final WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"

.field public static final WIFI_ON_WHEN_PROXY_DISCONNECTED:Ljava/lang/String; = "wifi_on_when_proxy_disconnected"

.field public static final WIFI_P2P_DEVICE_NAME:Ljava/lang/String; = "wifi_p2p_device_name"

.field public static final WIFI_RECOMMEND_NETWORKS_NOTIFICATION_ON:Ljava/lang/String; = "sem_wifi_recommend_networks_notification_on"

.field public static final WIFI_REENABLE_DELAY_MS:Ljava/lang/String; = "wifi_reenable_delay"

.field public static final WIFI_RESTRICTION_ON_SPRINTDM:Ljava/lang/String; = "wifi_restriction_on_sprintdm"

.field public static final WIFI_RTT_BACKGROUND_EXEC_GAP_MS:Ljava/lang/String; = "wifi_rtt_background_exec_gap_ms"

.field public static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"

.field public static final WIFI_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_scan_always_enabled"

.field public static final WIFI_SCAN_INTERVAL_WHEN_P2P_CONNECTED_MS:Ljava/lang/String; = "wifi_scan_interval_p2p_connected_ms"

.field public static final WIFI_SCORE_PARAMS:Ljava/lang/String; = "wifi_score_params"

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1

.field public static final WIFI_SUPPLICANT_SCAN_INTERVAL_MS:Ljava/lang/String; = "wifi_supplicant_scan_interval_ms"

.field public static final WIFI_SUSPEND_OPTIMIZATIONS_ENABLED:Ljava/lang/String; = "wifi_suspend_optimizations_enabled"

.field public static final WIFI_SWITCH_FOR_INDIVIDUAL_APPS_ENABLED:Ljava/lang/String; = "wifi_switch_for_individual_apps_enabled"

.field public static final WIFI_SWITCH_FOR_INDIVIDUAL_APPS_EVER_DETECTED:Ljava/lang/String; = "wifi_switch_for_individual_apps_ever_detected"

.field public static final WIFI_VERBOSE_LOGGING_ENABLED:Ljava/lang/String; = "wifi_verbose_logging_enabled"

.field public static final WIFI_WAKEUP_ENABLED:Ljava/lang/String; = "wifi_wakeup_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final WIFI_WAKEUP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"

.field public static final WIFI_WATCHDOG_POOR_NETWORK_AGGRESSIVE_MODE_ON:Ljava/lang/String; = "wifi_watchdog_poor_network_aggressive_mode_on"

.field public static final WIFI_WATCHDOG_POOR_NETWORK_AVOIDANCE_ENABLED:Ljava/lang/String; = "wifi_watchdog_poor_network_avoidance_enabled"

.field public static final WIFI_WATCHDOG_POOR_NETWORK_DIALOG_DO_NOT_SHOW:Ljava/lang/String; = "wifi_watchdog_poor_network_dialog_do_not_show"

.field public static final WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED:Ljava/lang/String; = "wifi_watchdog_poor_network_test_enabled"

.field private static final WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_WATCHDOG_VERSION:Ljava/lang/String; = "wifi_watchdog_version"

.field public static final WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wimax_networks_available_notification_on"

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"

.field public static final WTF_IS_FATAL:Ljava/lang/String; = "wtf_is_fatal"

.field public static final ZEN_DURATION:Ljava/lang/String; = "zen_duration"

.field public static final ZEN_DURATION_FOREVER:I = 0x0

.field public static final ZEN_DURATION_PROMPT:I = -0x1

.field private static final ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_ALARMS:I = 0x3

.field public static final ZEN_MODE_CONFIG_ETAG:Ljava/lang/String; = "zen_mode_config_etag"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I = 0x0

.field public static final ZEN_MODE_RINGER_LEVEL:Ljava/lang/String; = "zen_mode_ringer_level"

.field public static final ZEN_SETTINGS_SUGGESTION_VIEWED:Ljava/lang/String; = "zen_settings_suggestion_viewed"

.field public static final ZEN_SETTINGS_UPDATED:Ljava/lang/String; = "zen_settings_updated"

.field public static final ZRAM_ENABLED:Ljava/lang/String; = "zram_enabled"

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "content://settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_NUM_OF_SWITCH_TO_MOBILE_DATA_TOGGLE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->AUTO_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->AUTO_TIME_ZONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->DOCK_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->POWER_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->CHARGING_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->CHARGING_VIBRATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Global$1;

    invoke-direct {v0}, Landroid/provider/Settings$Global$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$Global;->STAY_ON_WHILE_PLUGGED_IN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_CARRIER_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->SOFT_AP_TIMEOUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_WAKEUP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "-1"

    const-string v2, "0"

    const-string v3, "1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Global;->NETWORK_RECOMMENDATIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Global$2;

    invoke-direct {v0}, Landroid/provider/Settings$Global$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$Global;->USE_OPEN_WIFI_PACKAGE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->PRIVATE_DNS_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->PRIVATE_DNS_SPECIFIER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->APP_AUTO_RESTRICTION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Global;->EMERGENCY_TONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->CALL_AUTO_RETRY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Global;->LOW_POWER_MODE_TRIGGER_LEVEL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->DOCK_AUDIO_MEDIA_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Global;->ENCODED_SURROUND_OUTPUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Global$3;

    invoke-direct {v0}, Landroid/provider/Settings$Global$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$Global;->ENCODED_SURROUND_OUTPUT_ENABLED_FORMATS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Global;->ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v2, "bugreport_in_power_menu"

    const-string/jumbo v3, "stay_on_while_plugged_in"

    const-string v4, "app_auto_restriction_enabled"

    const-string v5, "auto_time"

    const-string v6, "auto_time_zone"

    const-string/jumbo v7, "power_sounds_enabled"

    const-string v8, "dock_sounds_enabled"

    const-string v9, "charging_sounds_enabled"

    const-string/jumbo v10, "usb_mass_storage_enabled"

    const-string/jumbo v11, "network_recommendations_enabled"

    const-string/jumbo v12, "wifi_wakeup_enabled"

    const-string/jumbo v13, "wifi_networks_available_notification_on"

    const-string/jumbo v14, "wifi_carrier_networks_available_notification_on"

    const-string/jumbo v15, "use_open_wifi_package"

    const-string/jumbo v16, "wifi_watchdog_poor_network_test_enabled"

    const-string/jumbo v17, "wifi_num_of_switch_to_mobile_data_toggle"

    const-string v18, "emergency_tone"

    const-string v19, "call_auto_retry"

    const-string v20, "dock_audio_media_enabled"

    const-string v21, "encoded_surround_output"

    const-string v22, "encoded_surround_output_enabled_formats"

    const-string/jumbo v23, "low_power_trigger_level"

    const-string v24, "bluetooth_on"

    const-string/jumbo v25, "private_dns_mode"

    const-string/jumbo v26, "private_dns_specifier"

    const-string/jumbo v27, "soft_ap_timeout_enabled"

    const-string/jumbo v28, "zen_duration"

    const-string v29, "charging_vibration_enabled"

    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "bugreport_in_power_menu"

    sget-object v3, Landroid/provider/Settings$Global;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "stay_on_while_plugged_in"

    sget-object v3, Landroid/provider/Settings$Global;->STAY_ON_WHILE_PLUGGED_IN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "auto_time"

    sget-object v3, Landroid/provider/Settings$Global;->AUTO_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "auto_time_zone"

    sget-object v3, Landroid/provider/Settings$Global;->AUTO_TIME_ZONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "power_sounds_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->POWER_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "dock_sounds_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->DOCK_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "charging_sounds_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->CHARGING_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "usb_mass_storage_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "network_recommendations_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->NETWORK_RECOMMENDATIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "wifi_wakeup_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->WIFI_WAKEUP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    sget-object v3, Landroid/provider/Settings$Global;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "use_open_wifi_package"

    sget-object v3, Landroid/provider/Settings$Global;->USE_OPEN_WIFI_PACKAGE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "wifi_num_of_switch_to_mobile_data_toggle"

    sget-object v3, Landroid/provider/Settings$Global;->WIFI_NUM_OF_SWITCH_TO_MOBILE_DATA_TOGGLE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "emergency_tone"

    sget-object v3, Landroid/provider/Settings$Global;->EMERGENCY_TONE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "call_auto_retry"

    sget-object v3, Landroid/provider/Settings$Global;->CALL_AUTO_RETRY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "dock_audio_media_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->DOCK_AUDIO_MEDIA_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "encoded_surround_output"

    sget-object v3, Landroid/provider/Settings$Global;->ENCODED_SURROUND_OUTPUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "encoded_surround_output_enabled_formats"

    sget-object v3, Landroid/provider/Settings$Global;->ENCODED_SURROUND_OUTPUT_ENABLED_FORMATS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "low_power_trigger_level"

    sget-object v3, Landroid/provider/Settings$Global;->LOW_POWER_MODE_TRIGGER_LEVEL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "low_power_trigger_level_max"

    sget-object v3, Landroid/provider/Settings$Global;->LOW_POWER_MODE_TRIGGER_LEVEL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "bluetooth_on"

    sget-object v3, Landroid/provider/Settings$Global;->BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "private_dns_mode"

    sget-object v3, Landroid/provider/Settings$Global;->PRIVATE_DNS_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "private_dns_specifier"

    sget-object v3, Landroid/provider/Settings$Global;->PRIVATE_DNS_SPECIFIER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "soft_ap_timeout_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->SOFT_AP_TIMEOUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "wifi_carrier_networks_available_notification_on"

    sget-object v3, Landroid/provider/Settings$Global;->WIFI_CARRIER_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "app_auto_restriction_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->APP_AUTO_RESTRICTION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v2, "zen_duration"

    sget-object v3, Landroid/provider/Settings$Global;->ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Global;->VALIDATORS:Ljava/util/Map;

    const-string v2, "charging_vibration_enabled"

    sget-object v3, Landroid/provider/Settings$Global;->CHARGING_VIBRATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "location_global_kill_switch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Global;->TRANSIENT_SETTINGS:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/provider/Settings$Global;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Global;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    new-instance v0, Landroid/provider/Settings$NameValueCache;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "GET_global"

    const-string v3, "PUT_global"

    sget-object v4, Landroid/provider/Settings$Global;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V

    sput-object v0, Landroid/provider/Settings$Global;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Global;->MOVED_TO_SECURE:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$Global;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "user_preferred_sub1"

    const-string/jumbo v1, "user_preferred_sub2"

    const-string/jumbo v2, "user_preferred_sub3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Global;->MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wait_for_debugger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "device_provisioned"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "force_resizable_activities"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "debug.force_rtl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "ephemeral_cookie_max_size_bytes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "airplane_mode_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "window_animation_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "transition_animation_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "animator_duration_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "debug_view_attributes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "send_action_app_error"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "zen_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "navigationbar_current_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    sget-object v0, Landroid/provider/Settings$Global;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    sget-object v0, Landroid/provider/Settings$Global;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    return-void
.end method

.method public static final getBluetoothA2dpEnabledLdacKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_enabled_ldac_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothA2dpOptionalCodecsEnabledKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_optional_codecs_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_sink_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_src_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothA2dpSupportsLdacKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_supports_ldac_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothA2dpSupportsOptionalCodecsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_supports_optional_codecs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_headset_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHeadsetVolumeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_headset_volume_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHearingAidPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_hearing_aid_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHidHostPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_input_device_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothMapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_map_client_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_map_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothPanPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_pan_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_pbap_client_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothSapPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_sap_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return p2

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return p2

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 3

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    move-wide v1, p2

    goto :goto_1

    :cond_0
    move-wide v1, p2

    :goto_0
    nop

    :goto_1
    nop

    return-wide v1
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$Global;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/provider/Settings$Global;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Global to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$Global;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isValidZenMode(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8

    sget-object v0, Landroid/provider/Settings$Global;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has moved from android.provider.Settings.Global to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Landroid/provider/Settings$Global;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method public static resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "_reset_mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroid/provider/Settings$Global;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESET_global"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reset do defaults for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static zenModeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "ZEN_MODE_IMPORTANT_INTERRUPTIONS"

    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string v0, "ZEN_MODE_ALARMS"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "ZEN_MODE_NO_INTERRUPTIONS"

    return-object v0

    :cond_2
    const-string v0, "ZEN_MODE_OFF"

    return-object v0
.end method
