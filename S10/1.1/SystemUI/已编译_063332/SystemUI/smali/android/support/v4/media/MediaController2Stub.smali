.class Landroid/support/v4/media/MediaController2Stub;
.super Landroid/support/v4/media/IMediaController2$Stub;
.source "MediaController2Stub.java"


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaController2ImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private getBrowser()Landroid/support/v4/media/MediaBrowser2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/media/MediaBrowser2;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowser2;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getController()Landroid/support/v4/media/MediaController2ImplBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaController2ImplBase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Controller is released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAllowedCommandsChanged(Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "MediaController2Stub"

    const-string/jumbo v3, "onAllowedCommandsChanged(): Ignoring null commands"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferingStateChanged(Landroid/os/Bundle;IJ)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/media/MediaController2ImplBase;->notifyBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onChildrenChanged(): Ignoring null parentId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroid/support/v4/media/MediaController2Stub$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2Stub$6;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected(Landroid/support/v4/media/IMediaSession2;Landroid/os/Bundle;ILandroid/os/Bundle;JJFJLandroid/os/Bundle;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/IMediaSession2;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            "JJFJ",
            "Landroid/os/Bundle;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaController2ImplBase;

    if-nez v2, :cond_0

    const-string v3, "MediaController2Stub"

    const-string/jumbo v4, "onConnected after MediaController2.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v20, v3

    invoke-static/range {p2 .. p2}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v7

    invoke-static/range {p12 .. p12}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v15

    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v16, p14

    move/from16 v17, p13

    move-object/from16 v18, v20

    move-object/from16 v19, p16

    invoke-virtual/range {v3 .. v19}, Landroid/support/v4/media/MediaController2ImplBase;->onConnectedNotLocked(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/SessionCommandGroup2;ILandroid/support/v4/media/MediaItem2;JJFJLandroid/support/v4/media/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onCurrentMediaItemChanged(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCustomCommand(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "MediaController2Stub"

    const-string/jumbo v3, "onCustomCommand(): Ignoring null command"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCustomLayoutChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onCustomLayoutChanged(): Ignoring null commandButtonlist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/support/v4/media/MediaSession2$CommandButton;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomLayoutChanged(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaController2ImplBase;

    if-nez v0, :cond_0

    const-string v1, "MediaController2Stub"

    const-string/jumbo v2, "onDisconnected after MediaController2.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaController2;->close()V

    return-void
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase;->notifyError(ILandroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onGetChildrenDone(): Ignoring null parentId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Landroid/support/v4/media/MediaController2Stub$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/media/MediaController2Stub$3;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetItemDone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onGetItemDone(): Ignoring null mediaId"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaController2Stub$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/support/v4/media/MediaController2Stub$2;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroid/support/v4/media/MediaController2Stub$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2Stub$1;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onGetSearchResultDone(): Ignoring empty query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Landroid/support/v4/media/MediaController2Stub$5;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/media/MediaController2Stub$5;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackInfoChanged(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onPlaybackInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "MediaController2Stub"

    const-string/jumbo v3, "onPlaybackInfoChanged(): Ignoring null playbackInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackInfoChanges(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackSpeedChanged(JJF)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackSpeedChanges(JJF)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerStateChanged(JJI)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlayerStateChanges(JJI)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez p1, :cond_0

    const-string v1, "MediaController2Stub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlaylistChanged(): Ignoring null playlist from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "MediaController2Stub"

    const-string/jumbo v6, "onPlaylistChanged(): Ignoring null item in playlist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistChanges(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistMetadataChanges(Landroid/support/v4/media/MediaMetadata2;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRepeatModeChanges(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRoutesInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRoutesInfoChanged(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaController2Stub"

    const-string/jumbo v1, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroid/support/v4/media/MediaController2Stub$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2Stub$4;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekCompleted(JJJ)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/MediaController2ImplBase;->notifySeekCompleted(JJJ)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyShuffleModeChanges(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaController2Stub"

    const-string v2, "Don\'t fail silently here. Highly likely a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
