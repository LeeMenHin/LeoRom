.class public Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ChangeScreenLockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field protected final mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreference:Lcom/android/settingslib/RestrictedPreference;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# virtual methods
.method disableIfPasswordQualityManaged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "unlock_set_or_change"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120d2e

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;I)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    :cond_4
    return-void
.end method

.method protected updateSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121ab1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f121ab0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f121ab2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_6

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x7f121ab3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f121ab5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_6
    const v0, 0x7f121ab4

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    nop

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method
