.class Lcom/android/server/vr/Vr2dDisplay$5;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$700(Lcom/android/server/vr/Vr2dDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Vr2dDisplay"

    const-string v1, "Virtual Display destruction stopped: VrMode is back on."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Vr2dDisplay"

    const-string v1, "Stopping Virtual Display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$800(Lcom/android/server/vr/Vr2dDisplay;I)V

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$600(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$400(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$400(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->access$402(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    :cond_1
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$5;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v1}, Lcom/android/server/vr/Vr2dDisplay;->access$900(Lcom/android/server/vr/Vr2dDisplay;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
