.class public Lcom/android/settings/applications/DeviceAdministratorsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceAdministratorsController.java"


# static fields
.field static final KEY_DEVICE_ADMIN:Ljava/lang/String; = "device_administrators"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_administrators"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/DeviceAdministratorsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
