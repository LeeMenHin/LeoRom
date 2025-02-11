.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->cancelDragLocked()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    nop

    return-void

    :cond_1
    :try_start_3
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    throw v0
.end method

.method dragDropActiveLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag into new candidate view @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag from old candidate view @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method getInputWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Lcom/android/server/input/InputWindowHandle;

    move-result-object v0

    return-object v0
.end method

.method handleMotionEvent(ZFF)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFFI)V

    return-void
.end method

.method handleMotionEvent(ZFFI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wm/DragState;->notifyDropLocked(FFI)V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move/from16 v2, p9

    move-object/from16 v1, p12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perform drag: win="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " surface="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " flags="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " data="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v4, v0

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object v10, v6

    move-object v11, v4

    move/from16 v12, p7

    move v13, v3

    move v14, v2

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, v1

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v0

    move v9, v0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    const/4 v0, 0x0

    if-nez v9, :cond_3

    :try_start_2
    const-string v7, "WindowManager"

    const-string v11, "IDragDropCallback rejects the performDrag request"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v13, p10

    move-object/from16 v26, v4

    move-object v1, v5

    move/from16 v18, v9

    move/from16 v4, p11

    :goto_0
    move v5, v2

    goto/16 :goto_e

    :cond_1
    :goto_1
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_2

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v13, p10

    move-object/from16 v26, v4

    move-object v1, v5

    :goto_2
    move/from16 v18, v9

    move/from16 v4, p11

    :goto_3
    move v5, v2

    goto/16 :goto_c

    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    if-eqz v7, :cond_6

    :try_start_5
    const-string v7, "WindowManager"

    const-string v11, "Drag already in progress"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    :cond_4
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_5

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_5
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v0

    :cond_6
    :try_start_7
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v7, v0, v6, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    move-object v12, v7

    if-nez v12, :cond_9

    :try_start_8
    const-string v7, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad requesting window "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    nop

    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    :cond_7
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_8

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_8
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v0

    :cond_9
    :try_start_a
    iget-boolean v7, v12, Lcom/android/server/wm/WindowState;->mDssEnabled:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    if-eqz v7, :cond_a

    :try_start_b
    iget v7, v12, Lcom/android/server/wm/WindowState;->mDssScale:F
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    div-float v7, p10, v7

    :try_start_c
    iget v13, v12, Lcom/android/server/wm/WindowState;->mDssScale:F
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    div-float v13, p11, v13

    move v14, v13

    move v13, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v26, v4

    move-object v1, v5

    move v13, v7

    goto/16 :goto_2

    :cond_a
    move/from16 v13, p10

    move/from16 v14, p11

    :goto_4
    :try_start_d
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    move-object v15, v7

    if-nez v15, :cond_d

    :try_start_e
    const-string v7, "WindowManager"

    const-string v11, "display content is null"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    nop

    if-eqz v5, :cond_b

    :try_start_f
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v26, v4

    move-object v1, v5

    move/from16 v18, v9

    move v4, v14

    goto/16 :goto_0

    :cond_b
    :goto_5
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_c

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_c
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v26, v4

    move-object v1, v5

    move/from16 v18, v9

    move v4, v14

    goto/16 :goto_3

    :cond_d
    move/from16 v7, p5

    and-int/lit16 v11, v7, 0x200

    const/high16 v16, 0x3f800000    # 1.0f

    if-nez v11, :cond_e

    const v11, 0x3f350481    # 0.7071f

    goto :goto_6

    :cond_e
    move/from16 v11, v16

    :goto_6
    :try_start_10
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    move-object/from16 v7, v17

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    move/from16 v18, v9

    move-object v9, v4

    move-object v4, v0

    :try_start_11
    new-instance v0, Lcom/android/server/wm/DragState;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    :try_start_12
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    move/from16 v19, v14

    move-object v14, v1

    move-object v1, v0

    move/from16 v20, v13

    move/from16 v13, p9

    move v13, v3

    move-object v3, v8

    move-object/from16 v5, p6

    move/from16 v6, p5

    :try_start_13
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    const/4 v1, 0x0

    :try_start_14
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/wm/DragState;->mPid:I

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v11, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v5, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v12, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v5, v6, v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-nez v2, :cond_11

    :try_start_15
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    nop

    if-eqz v1, :cond_f

    :try_start_16
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v26, v9

    move v3, v13

    move/from16 v4, v19

    move/from16 v13, v20

    move/from16 v5, p9

    goto/16 :goto_e

    :cond_f
    :goto_7
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_10

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_10
    monitor-exit v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    const/4 v2, 0x0

    return-object v2

    :catchall_6
    move-exception v0

    move-object/from16 v26, v9

    move v3, v13

    move/from16 v4, v19

    move/from16 v13, v20

    move/from16 v5, p9

    goto/16 :goto_c

    :cond_11
    :try_start_17
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v15, v2, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    move v3, v13

    move/from16 v5, p9

    :try_start_18
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    move/from16 v13, v20

    :try_start_19
    iput v13, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    move-object/from16 v21, v4

    move/from16 v4, v19

    :try_start_1a
    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v22, v0

    iget-boolean v0, v12, Lcom/android/server/wm/WindowState;->mDssEnabled:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    if-eqz v0, :cond_12

    :try_start_1b
    iget v0, v12, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v0, v16, v0

    iget v6, v12, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v6, v16, v6

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v26, v9

    goto/16 :goto_c

    :cond_12
    :goto_8
    sub-float v0, v3, v13

    sub-float v6, v5, v4

    :try_start_1c
    invoke-virtual {v2, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->hasOneHandOpSpec()Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v0, :cond_13

    :try_start_1d
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    if-eqz v0, :cond_13

    iget v6, v0, Landroid/view/MagnificationSpec;->scale:F

    move-object/from16 v23, v7

    iget v7, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v6, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto :goto_9

    :cond_13
    move-object/from16 v23, v7

    :goto_9
    :try_start_1e
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-eqz v6, :cond_14

    :try_start_1f
    const-string v6, "WindowManager"

    const-string v7, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :cond_14
    nop

    :try_start_20
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v6, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v16, 0x2

    move-object/from16 v24, v2

    aget v2, v7, v16

    const/16 v16, 0x5

    move/from16 v25, v11

    aget v11, v7, v16

    invoke-virtual {v0, v2, v11}, Landroid/view/SurfaceControl;->setPosition(FF)V

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v11, 0x3

    aget v11, v7, v11

    const/16 v16, 0x1

    aget v14, v7, v16
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    const/16 v16, 0x4

    move-object/from16 v26, v9

    :try_start_21
    aget v9, v7, v16

    invoke-virtual {v0, v2, v11, v14, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    sub-float v2, v3, v13

    sub-float v9, v5, v4

    invoke-virtual {v6, v0, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/SamsungWindowManagerService;->hasOneHandOpSpec()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_15

    sub-float v9, v3, v13

    iget v11, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v9, v11

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    sub-float v11, v5, v4

    iget v14, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v14

    iget v14, v2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v11, v14

    float-to-int v11, v11

    int-to-float v14, v9

    move-object/from16 v27, v2

    int-to-float v2, v11

    invoke-virtual {v6, v0, v14, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_15
    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v15, v6, v0}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_16

    const-string v2, "WindowManager"

    const-string v9, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    if-eqz v1, :cond_17

    :try_start_22
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_17
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_18

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_18
    monitor-exit v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    nop

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v26

    :catchall_8
    move-exception v0

    goto/16 :goto_c

    :catchall_9
    move-exception v0

    move-object/from16 v26, v9

    goto/16 :goto_c

    :catchall_a
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v4, v19

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v4, v19

    move/from16 v13, v20

    goto :goto_a

    :catchall_c
    move-exception v0

    move-object/from16 v26, v9

    move v3, v13

    move/from16 v4, v19

    move/from16 v13, v20

    move/from16 v5, p9

    goto :goto_a

    :catchall_d
    move-exception v0

    move-object/from16 v26, v9

    move v3, v13

    move/from16 v4, v19

    move/from16 v13, v20

    move/from16 v5, p9

    move-object/from16 v1, p6

    :goto_a
    goto :goto_c

    :catchall_e
    move-exception v0

    move-object/from16 v26, v9

    move v4, v14

    move/from16 v5, p9

    goto :goto_b

    :catchall_f
    move-exception v0

    move v5, v2

    move-object/from16 v26, v9

    move v4, v14

    :goto_b
    move-object/from16 v1, p6

    goto :goto_c

    :catchall_10
    move-exception v0

    move v5, v2

    move-object/from16 v26, v4

    move/from16 v18, v9

    move v4, v14

    move-object/from16 v1, p6

    goto :goto_c

    :catchall_11
    move-exception v0

    move v5, v2

    move-object/from16 v26, v4

    move/from16 v18, v9

    move-object/from16 v1, p6

    move/from16 v13, p10

    move/from16 v4, p11

    :goto_c
    if-eqz v1, :cond_19

    :try_start_24
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_d

    :catchall_12
    move-exception v0

    goto :goto_e

    :cond_19
    :goto_d
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_1a

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1a
    throw v0

    :goto_e
    monitor-exit v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    :catchall_13
    move-exception v0

    goto :goto_f

    :catchall_14
    move-exception v0

    move v5, v2

    move-object/from16 v26, v4

    move/from16 v18, v9

    move-object/from16 v1, p6

    move/from16 v13, p10

    move/from16 v4, p11

    :goto_f
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .locals 6

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    nop

    return-void

    :cond_3
    :try_start_5
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
