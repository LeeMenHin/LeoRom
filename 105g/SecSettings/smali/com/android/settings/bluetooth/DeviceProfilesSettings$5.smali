.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;
.super Landroid/os/Handler;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$900(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "EVENT_LDAC_SWITCHING :: it doesn\'t need to update view, it is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->val$preference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$1000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    :goto_0
    return-void
.end method
