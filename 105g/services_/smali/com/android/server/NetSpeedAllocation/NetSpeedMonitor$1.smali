.class Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NetSpeedMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForegroundActivitiesChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistNONetworkBandwidth(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetSpeedMonitor"

    const-string/jumbo v2, "onForegroundActivitiesChanged: Foreground whiteList"

    invoke-static {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$200(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$400(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$400(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v2, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistNONetworkBandwidth(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$400(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->updateLimitStaus()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_5
    :goto_2
    :try_start_1
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onProcessDied(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$400(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v2, v2, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
