.class final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED_AFTER_CONNECTION:I = 0x2

.field private static final STATE_CLOSED_BEFORE_CONNECTION:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_WAIT_CONNECTION:I = 0x0

.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method private processCloseLocked()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCloseLocked is called unexpectedly. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-ne v0, v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-eq v0, v2, :cond_2

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring processOrEnqueueTask due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scp.mWhat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->taskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_2
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-nez v0, :cond_7

    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v2, :cond_5

    :goto_0
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v1, :cond_4

    move-object v0, v2

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .locals 4

    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    :try_start_2
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    :try_start_3
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    nop

    :goto_2
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "STATE_CLOSED_BEFORE_CONNECTION"

    return-object v0

    :pswitch_1
    const-string v0, "STATE_CLOSED_AFTER_CONNECTION"

    return-object v0

    :pswitch_2
    const-string v0, "STATE_CONNECTED"

    return-object v0

    :pswitch_3
    const-string v0, "STATE_WAIT_CONNECTION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static taskToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE"

    return-object v0

    :pswitch_1
    const-string v0, "TASK_CLOSE"

    return-object v0

    :pswitch_2
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE"

    return-object v0

    :pswitch_3
    const-string v0, "TASK_CANCEL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 4

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public close()V
    .locals 4

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 3

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 2

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public isDisconnected()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring onServiceConnected due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    nop

    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ignoring onServiceConnected due to session=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_2
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    :goto_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
