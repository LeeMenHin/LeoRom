.class public Lcom/android/settings/notification/ZenModeMessagesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeMessagesPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mListEntries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroid/support/v7/preference/SecDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "messages"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    return-void
.end method

.method private updateFromContactsValue(Landroid/support/v7/preference/Preference;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->getContactsSummary(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setEnabled(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "messages"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mPreference:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1018

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "messages"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/ZenModeBackend;->saveSenders(II)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->updateFromContactsValue(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x101e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;->updateFromContactsValue(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
