.class Lcom/android/server/FMRadioService$3;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AUDIO_BECOMING_NOISE , Its from BT :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v2, "DISCONNECT_DOCK"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AUDIO_BECOMING_NOISE , Its from Dock :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$800(Lcom/android/server/FMRadioService;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelSeek()V

    iget-object v2, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;IZ)Z

    :cond_1
    return-void
.end method
