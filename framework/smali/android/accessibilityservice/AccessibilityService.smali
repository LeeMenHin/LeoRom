.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;,
        Landroid/accessibilityservice/AccessibilityService$MagnificationController;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardShowMode;,
        Landroid/accessibilityservice/AccessibilityService$Callbacks;
    }
.end annotation


# static fields
.field public static final GESTURE_SWIPE_DOWN:I = 0x2

.field public static final GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final GESTURE_SWIPE_LEFT:I = 0x3

.field public static final GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final GESTURE_SWIPE_UP:I = 0x1

.field public static final GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final GLOBAL_ACTION_BACK:I = 0x1

.field public static final GLOBAL_ACTION_HOME:I = 0x2

.field public static final GLOBAL_ACTION_LOCK_SCREEN:I = 0x8

.field public static final GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final GLOBAL_ACTION_RECENTS:I = 0x3

.field public static final GLOBAL_ACTION_TAKE_SCREENSHOT:I = 0x9

.field public static final GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HIDDEN:I = 0x1


# instance fields
.field private mAccessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

.field private mConnectionId:I

.field private mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

.field private mGestureStatusCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureStatusCallbackSequence:I

.field private mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

.field private mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/accessibilityservice/AccessibilityService;)I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return v0
.end method

.method static synthetic access$002(Landroid/accessibilityservice/AccessibilityService;I)I
    .locals 0

    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p1
.end method

.method static synthetic access$100(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V

    return-void
.end method

.method static synthetic access$202(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Landroid/accessibilityservice/AccessibilityService;Landroid/graphics/Region;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$400(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintCapturingGesturesChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintGesture(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method private dispatchServiceConnected()V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->onServiceConnected()V

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->onServiceConnected()V

    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    return-void
.end method

.method private onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method private onAccessibilityButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonClicked()V

    return-void
.end method

.method private onFingerprintCapturingGesturesChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGestureDetectionActiveChanged(Z)V

    return-void
.end method

.method private onFingerprintGesture(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGesture(I)V

    return-void
.end method

.method private onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V

    :cond_0
    return-void
.end method

.method private onSoftKeyboardShowModeChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V

    :cond_0
    return-void
.end method

.method private sendServiceInfo()V
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityService"

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    .locals 7

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/16 v1, 0x64

    invoke-static {p1, v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    :cond_1
    new-instance v3, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {v3, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;-><init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    iget v6, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    monitor-exit v2

    nop

    return v4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v2, -0x2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/accessibilityservice/AccessibilityButtonController;

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/accessibilityservice/AccessibilityButtonController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    if-nez v0, :cond_0

    new-instance v0, Landroid/accessibilityservice/FingerprintGestureController;

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    return-object v0
.end method

.method public final getMagnificationController()Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityService"

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getSoftKeyboardController()Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$2;

    invoke-direct {v2, p0}, Landroid/accessibilityservice/AccessibilityService$2;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-object v0
.end method

.method protected onGesture(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onInterrupt()V
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onPerformGestureResult(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$1;

    invoke-direct {v3, p0, p2, v0}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onServiceConnected()V
    .locals 0

    return-void
.end method

.method public final performGlobalAction(I)Z
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityService"

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public semGetFragmentBoundsOnTopActivity()[Landroid/graphics/Rect;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFragmentBoundsOnTopActivity(I)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public semIsTopActivityCovered()Z
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->isTopActivityCovered(I)Z

    move-result v0

    return v0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    return-void
.end method
