.class public Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/support/v7/preference/Preference;

.field private mEthManager:Landroid/net/EthernetManager;

.field private final mEthStateReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetSettings:Lcom/samsung/android/settings/ethernet/EthernetSettings;

.field mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private mStartMode:I

.field public summaryUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/support/v14/preference/SecSwitchPreference;Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$2;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthConfigPref:Landroid/support/v7/preference/Preference;

    iput-object p2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p3}, Landroid/support/v14/preference/SecSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f12116b

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void
.end method

.method private handleEthSummaryIfConnectionFailsLanNotConnected()V
    .locals 4

    const-string v0, "SettingsEthEnabler"

    const-string v1, "handleEthSummaryIfConnectionFailsLanNotConnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postEnableTaskFinishedUIUpdate(Z)V
    .locals 5

    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEnableTaskFinishedUIUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f121451

    if-eqz p1, :cond_0

    const v3, 0x7f1213d1

    goto :goto_0

    :cond_0
    nop

    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const-string v1, "SettingsEthEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEnableTaskFinishedUIUpdate newstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    const v2, 0x7f12116b

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->handleEthSummaryIfConnectionFailsLanNotConnected()V

    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getManager()Landroid/net/EthernetManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f12116b

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f121451

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public setCheckBox(I)V
    .locals 3

    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckBox  req state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "now state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConfigDialog(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    return-void
.end method

.method public setEthEnabled(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v0

    const-string v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthEnabled enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v1, "SettingsEthEnabler"

    const-string/jumbo v2, "update enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    new-instance v2, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Lcom/samsung/android/settings/ethernet/EthernetEnabler$1;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, ""

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setEthernetSettings(Lcom/samsung/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->mEthernetSettings:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    return-void
.end method
