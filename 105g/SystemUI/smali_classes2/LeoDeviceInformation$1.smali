.class Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;
.super Landroid/content/BroadcastReceiver;
.source "LeoDeviceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoDeviceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$000(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$000(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$100(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$000(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$000(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoDeviceInformation$1;->this$0:Lcom/android/systemui/fusionleo/LeoDeviceInformation;

    invoke-static {v2}, Lcom/android/systemui/fusionleo/LeoDeviceInformation;->access$100(Lcom/android/systemui/fusionleo/LeoDeviceInformation;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    mul-long v3, v3, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
