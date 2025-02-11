.class public Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UseOpenWifiPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDoFeatureSupportedScorersExist:Z

.field private mEnableUseWifiComponentName:Landroid/content/ComponentName;

.field private final mFragment:Landroid/app/Fragment;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;


# direct methods
.method static synthetic access$000(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateEnableUseWifiComponentName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private isSettingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private updateEnableUseWifiComponentName()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    nop

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "use_open_wifi_automatically"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "use_open_wifi_automatically"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "use_open_wifi_automatically"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "use_open_wifi_package"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroid/app/Fragment;

    const/16 v3, 0x190

    invoke-virtual {v2, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-nez v1, :cond_4

    const v2, 0x7f121b32

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    const v2, 0x7f121b31

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    const v2, 0x7f121b30

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    return-void
.end method
