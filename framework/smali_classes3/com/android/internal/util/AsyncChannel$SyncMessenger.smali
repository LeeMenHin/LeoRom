.class Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static sCount:I

.field private static sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private static obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .locals 6

    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$1;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycle()V
    .locals 2

    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 6

    invoke-static {}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$300(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$400(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "AsyncChannel"

    const-string/jumbo v5, "mResultMsg should be null here"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4, v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$402(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v4, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$300(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    iget-object v4, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$400(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v4

    move-object v2, v4

    iget-object v4, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4, v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->access$402(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    return-object v2
.end method
