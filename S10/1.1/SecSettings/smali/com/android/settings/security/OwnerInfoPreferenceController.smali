.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private final mParent:Landroid/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroid/app/Fragment;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroid/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "owner_info_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method getDeviceOwnerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "owner_info_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isDeviceOwnerInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method isOwnerInfoEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public updateEnableState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$1;-><init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
