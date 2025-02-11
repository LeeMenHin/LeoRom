.class Landroid/view/SurfaceView$3;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .locals 7

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-boolean v1, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v2, "SurfaceHolder"

    const-string v3, "Exception locking surface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceView;->mLastLockTime:J

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-wide v3, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    sub-long v5, v3, v1

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :cond_3
    iget-object v5, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput-wide v1, v5, Landroid/view/SurfaceView;->mLastLockTime:J

    iget-object v5, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v5, v5, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v5, 0x0

    return-object v5
.end method

.method public static synthetic lambda$setKeepScreenOn$0(Landroid/view/SurfaceView$3;Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$3;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView$3;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$3;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFixedSize(II)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1, v0}, Landroid/view/SurfaceView;->access$200(Landroid/view/SurfaceView;Z)V

    iget-object v1, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setFormat(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->access$002(Landroid/view/SurfaceView;I)I

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->updateSurface()V

    :cond_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/-$$Lambda$SurfaceView$3$XvaZSTTyv1kHN4GtX5NDdmQTRp8;

    invoke-direct {v1, p0, p1}, Landroid/view/-$$Lambda$SurfaceView$3$XvaZSTTyv1kHN4GtX5NDdmQTRp8;-><init>(Landroid/view/SurfaceView$3;Z)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSizeFromLayout()V
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iput v1, v2, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->access$200(Landroid/view/SurfaceView;Z)V

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/view/SurfaceView$3;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
