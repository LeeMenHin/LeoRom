.class Landroid/app/BarBeamService$CheckStatusThread$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BarBeamService$CheckStatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService$CheckStatusThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v2, v2, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v2, "BarBeamService"

    const-string v3, "check status ++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v2, v2, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v2}, Landroid/app/BarBeamService;->getCurrentStatus()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v2, "BarBeamService"

    const-string v3, "check status --"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v2, v2, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/BarBeamService;->access$102(Landroid/app/BarBeamService;Z)Z

    iget-object v2, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v2, v2, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
