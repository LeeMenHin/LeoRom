.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# instance fields
.field private mCurrentLocationMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    iget v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public getButtonDescription()I
    .locals 1

    const v0, 0x7f120a7e

    return v0
.end method

.method public getButtonId()I
    .locals 1

    const v0, 0x7f0a03f2

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x7f0800d4

    return v0

    :cond_0
    const v0, 0x7f0800d3

    return v0

    :cond_1
    const v0, 0x7f0800d2

    return v0
.end method

.method public getContainerId()I
    .locals 1

    const v0, 0x7f0a0126

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    const v0, 0x7f0a03fa

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
