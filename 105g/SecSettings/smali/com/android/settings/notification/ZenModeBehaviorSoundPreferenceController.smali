.class public Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBehaviorSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "zen_sound_vibration_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;->mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zen_sound_vibration_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;->mSummaryBuilder:Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->getSoundSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method
