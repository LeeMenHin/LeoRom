.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "FingerSensorGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_gesture_quick"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->access$100(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->access$300(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->access$000(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->access$200(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void
.end method
