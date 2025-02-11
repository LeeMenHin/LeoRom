.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$Callback;,
        Landroid/view/InputQueue$ActiveInputEvent;
    }
.end annotation


# instance fields
.field private final mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private finishInputEvent(JZ)V
    .locals 4

    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputQueue$ActiveInputEvent;

    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    iget-object v2, v1, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v3, v1, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {v2, v3, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    invoke-direct {p0, v1}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    :cond_0
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 3

    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/InputQueue$ActiveInputEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$1;)V

    move-object v0, v1

    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    return-object v0
.end method

.method private recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    return-void
.end method

.method public dispose(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    return-wide v0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 7

    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object v0

    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    invoke-static {v1, v2, v3, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    iget-boolean v2, v1, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v4, v2

    neg-float v5, v3

    invoke-static {v1, v4, v5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;FF)Landroid/view/MotionEvent;

    move-result-object v4

    iget-wide v5, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v5, v6, v4}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    nop

    move-wide v1, v5

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v2, v3, v1}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method
