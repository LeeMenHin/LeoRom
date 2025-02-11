.class final Lcom/android/server/SdpManagerService$StateListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateListener"
.end annotation


# instance fields
.field mEngineId:I

.field mIsValid:Z

.field mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/ISdpListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    iput p2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$dispose$1(Lcom/android/server/SdpManagerService$StateListener;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SdpManagerService"

    const-string v2, "Failed to unlink death listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SdpManagerService"

    const-string v2, "Listener might be already finalized..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/SdpManagerService$StateListener;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdpManagerService"

    const-string v2, "Failed to link death listener..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    :goto_0
    return-void
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    iget-object v1, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    iget v2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    invoke-static {v1, v2}, Lcom/android/server/SdpManagerService;->access$2800(Lcom/android/server/SdpManagerService;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/SdpManagerService$ListenerRoll;->disenroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    return-void
.end method

.method get()Landroid/os/ISdpListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISdpListener;

    return-object v0
.end method

.method getParent()Lcom/android/server/SdpManagerService$ListenerRoll;
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    return v0
.end method

.method releaseReferences()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    return-void
.end method
