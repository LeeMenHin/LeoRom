.class public Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf


# instance fields
.field public mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field public mIsDefaultDisplay:Z

.field private mTouchInteractionInProgress:Z

.field public mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowsForSecondScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mIsDefaultDisplay:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getBindInstantServiceAllowed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setBindInstantServiceAllowed(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowInfoById(I)Landroid/view/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setCurrentDisplayType(Z)V

    return-void
.end method

.method private box(I)Ljava/util/function/IntSupplier;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    return-object v0
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    return v1

    :goto_0
    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2000

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v1

    return v1

    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6100()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWindowInfoById(I)Landroid/view/WindowInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/WindowInfo;

    :cond_0
    return-object v0
.end method

.method private getBindInstantServiceAllowed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "getBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getFocusedWindowId()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentDisplayDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mIsDefaultDisplay:Z

    return v0
.end method

.method private isRetrievalAllowingWindowLocked(I)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isShellAllowedToRetrieveWindowLocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2
.end method

.method private isShellAllowedToRetrieveWindowLocked(I)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6000(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_1

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v5, "no_debugging_features"

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v3

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private resolveProfileParentLocked(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return p1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCurrentDisplayDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    nop

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v9, :cond_3

    nop

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v10

    if-eqz v10, :cond_4

    nop

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v11

    invoke-static {v11, v10}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    nop

    :goto_4
    if-ge v4, v7, :cond_6

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .locals 9

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .locals 9

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setBindInstantServiceAllowed(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eq v1, p2, :cond_2

    iput-boolean p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_2
    return-void
.end method

.method private setCurrentDisplayType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mIsDefaultDisplay:Z

    return-void
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearWindowsLocked()V
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCurrentDisplayDefault()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setCurrentDisplayType(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    const/4 v4, 0x4

    if-ltz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_1

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    move-object v0, p2

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    if-eq v6, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_6

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_4

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    move-object v0, p2

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    if-eq v6, v4, :cond_5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_2

    nop

    invoke-virtual {v2, p3}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    array-length v4, v0

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    nop

    :goto_0
    if-ge v1, v5, :cond_1

    array-length v6, v0

    add-int/2addr v6, v1

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    return-object v0
.end method

.method public findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    :cond_0
    return-object v0
.end method

.method public getActiveWindowId()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onTouchInteractionEnd()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v2

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

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

.method public onTouchInteractionStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_8

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_8

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    if-ne v4, v5, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    :cond_3
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call from user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    if-eq p1, v2, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    :cond_8
    :goto_2
    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1
.end method

.method resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    aget-object v0, v4, v0

    return-object v0
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .locals 6

    const/16 v0, 0x20

    if-eq p4, v0, :cond_7

    const/16 v0, 0x80

    if-eq p4, v0, :cond_5

    const v0, 0x8000

    if-eq p4, v0, :cond_3

    const/high16 v0, 0x10000

    if-eq p4, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v1, p2

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_1

    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    :cond_1
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v1, p1, :cond_2

    const/16 v1, 0x40

    if-eq p5, v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, p1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    :cond_6
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, v1, :cond_8

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    :cond_8
    monitor-exit v0

    nop

    :goto_0
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCurrentDisplayDefault()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowsForSecondScreen:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoByIdForSecondScreen:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    :cond_2
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInfo;

    invoke-virtual {v8}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iget-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v8, :cond_4

    iput v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    :cond_4
    const/4 v8, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const/4 v11, 0x1

    if-eq v10, v7, :cond_5

    move v7, v11

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-lez v9, :cond_f

    move v10, v8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_a

    move-object/from16 v12, p1

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowInfo;

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->access$5700(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v14

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_9

    add-int/lit8 v15, v9, -0x1

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v16

    if-eqz v16, :cond_8

    iput v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iget-boolean v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v6, :cond_7

    iput v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_5

    :cond_7
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v15, v6, :cond_8

    const/4 v6, 0x0

    move v10, v6

    :cond_8
    :goto_5
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v13}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v6

    invoke-virtual {v2, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v12, p1

    iget-boolean v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v6, :cond_b

    if-eqz v10, :cond_b

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v17, 0x0

    :goto_6
    move/from16 v8, v17

    if-ge v8, v6, :cond_e

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v14

    iget v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v14, v15, :cond_c

    invoke-virtual {v13, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :cond_c
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v14

    iget v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v14, v15, :cond_d

    invoke-virtual {v13, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    const/4 v7, 0x0

    :cond_d
    add-int/lit8 v17, v8, 0x1

    goto :goto_6

    :cond_e
    move v8, v10

    goto :goto_7

    :cond_f
    move-object/from16 v12, p1

    :goto_7
    invoke-direct {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v10, v6, -0x1

    :goto_8
    if-ltz v10, :cond_10

    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_10
    if-eqz v7, :cond_11

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v10

    sget-object v11, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v14, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method
