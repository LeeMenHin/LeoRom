.class public Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBehaviorMsgEventReminderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_msg_event_reminder_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zen_mode_msg_event_reminder_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;->getPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getMsgEventReminderSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
