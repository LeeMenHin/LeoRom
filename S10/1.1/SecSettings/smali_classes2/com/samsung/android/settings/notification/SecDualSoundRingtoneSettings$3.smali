.class Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SecDualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecDualSoundRingtoneSettings;->finish()V

    return-void
.end method
