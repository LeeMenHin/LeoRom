.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final mDispatchedOutsets:Landroid/graphics/Rect;

.field final mDispatchedOverscanInsets:Landroid/graphics/Rect;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field final mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field mDrawingAllowed:Z

.field final mFinalStableInsets:Landroid/graphics/Rect;

.field final mFinalSystemInsets:Landroid/graphics/Rect;

.field mFixedSizeAllowed:Z

.field mFormat:I

.field private final mHandler:Landroid/os/Handler;

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field mIsInAmbientMode:Z

.field mIsSleepMode:Z

.field private mLastColorInvalidation:J

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field final mMergedConfiguration:Landroid/util/MergedConfiguration;

.field private final mNotifyColorsChanged:Ljava/lang/Runnable;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field mReportedVisible:Z

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field mX:I

.field mY:I

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 2

    sget-object v0, Landroid/service/wallpaper/-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;->INSTANCE:Landroid/service/wallpaper/-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/service/wallpaper/-$$Lambda$vsWBQpiXExY07tlrSzTqh4pNQAQ;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/-$$Lambda$vsWBQpiXExY07tlrSzTqh4pNQAQ;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return v0
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$200()I

    move-result v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$300()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$300()I

    move-result v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$200()I

    move-result v1

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->access$302(I)I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->access$202(I)I

    :cond_1
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$400()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$300()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$400()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->access$200()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    return-void
.end method

.method private isSupportInconsistency()Z
    .locals 6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 3

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$500(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    return-void
.end method

.method detach()V
    .locals 4

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach onVisibilityChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    :cond_3
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    :cond_4
    return-void
.end method

.method public doAmbientModeChanged(ZZ)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZZ)V

    :cond_0
    return-void
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    return-void
.end method

.method doDesiredSizeChanged(II)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    :cond_0
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_0
    return-void
.end method

.method doOffsetsChanged(Z)V
    .locals 12

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v10, v2

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v0, :cond_2

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    neg-int v4, v4

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v11, v4, v8

    if-lez v11, :cond_3

    int-to-float v2, v11

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :goto_1
    move v8, v2

    goto :goto_2

    :cond_3
    goto :goto_1

    :goto_2
    move-object v2, p0

    move v3, v1

    move v4, v9

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_6
    :goto_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method doVisibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mX="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "mY="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, " mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, " mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mPendingSync="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingMove="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

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

.method public getDesiredMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isInAmbientMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public notifyColorsChanged()V
    .locals 6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string v2, "WallpaperService"

    const-string v3, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v3, v2}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;)V

    goto :goto_0

    :cond_2
    const-string v3, "WallpaperService"

    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WallpaperService"

    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onAmbientModeChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x272e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isSupportInconsistency()Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z

    const-string v0, "WallpaperService"

    const-string/jumbo v1, "onCreate: mIsSupportInconsistencyWallpaper ? true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 5

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method reportVisibility()V
    .locals 4

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v0, v2

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v2, v0, :cond_3

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportVisibility onVisibilityChanged visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setCreated(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    return-void
.end method

.method public setFixedSizeAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_1
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    :cond_1
    return-void
.end method

.method updateSurface(ZZZ)V
    .locals 66

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v5, "Ignoring updateSurface: destroyed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    goto :goto_0

    :cond_1
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v5

    :goto_0
    if-gtz v5, :cond_2

    const/4 v5, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    goto :goto_2

    :cond_3
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v6

    :goto_2
    if-gtz v6, :cond_4

    const/4 v6, -0x1

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :goto_4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    move v9, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    move v10, v0

    const-string v0, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSurface forceRelayout="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " forceReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " redrawNeeded="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " myWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " myHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " fixedSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " x = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " y = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " mWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " mHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " mIsSleepMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSleepMode:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    move v12, v0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v11

    move v13, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v14}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v14

    if-eq v0, v14, :cond_7

    move v0, v11

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    move v14, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v5, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-ne v0, v6, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    if-ne v0, v9, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    if-eq v0, v10, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    move v0, v11

    :goto_9
    move v15, v0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v11

    move/from16 v16, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v8

    if-eq v0, v8, :cond_a

    move v0, v11

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    move v8, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v11, :cond_c

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v11, :cond_b

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x1

    :goto_c
    move v11, v0

    if-nez v2, :cond_e

    if-nez v12, :cond_e

    if-nez v13, :cond_e

    if-nez v14, :cond_e

    if-nez v15, :cond_e

    if-nez v8, :cond_e

    if-nez v11, :cond_e

    if-nez v4, :cond_e

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v18, v5

    move/from16 v35, v6

    move/from16 v64, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v41, v14

    move v8, v3

    goto/16 :goto_20

    :cond_e
    :goto_d
    :try_start_0
    iput v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mX:I

    iput v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mY:I

    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iput v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_15

    or-int/lit16 v2, v2, 0x200

    const/high16 v17, 0x10000

    or-int v2, v2, v17

    or-int/lit16 v2, v2, 0x100

    move/from16 v18, v5

    const/16 v5, 0x8

    or-int/2addr v2, v5

    :try_start_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_e
    move v2, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_14

    if-eqz v0, :cond_10

    if-nez v2, :cond_10

    :try_start_2
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v5, "window"

    invoke-virtual {v0, v5}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v19, v17

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move/from16 v21, v2

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-object/from16 v22, v0

    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->access$302(I)I

    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->access$202(I)I

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->access$402(I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    move/from16 v35, v6

    move/from16 v64, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v41, v14

    move v8, v3

    :goto_f
    move v7, v4

    goto/16 :goto_1f

    :cond_10
    move/from16 v21, v2

    :goto_10
    :try_start_3
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_14

    if-nez v0, :cond_12

    :try_start_4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v5, v5, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x103030f

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    iput-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v34, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v0, v0, Lcom/android/internal/view/BaseIWindow;->mSeq:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    move/from16 v35, v6

    :try_start_5
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v36, v8

    :try_start_6
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move/from16 v37, v9

    :try_start_7
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    move/from16 v38, v10

    :try_start_8
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v39, v11

    :try_start_9
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    move/from16 v40, v15

    :try_start_a
    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    move/from16 v41, v14

    :try_start_b
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move/from16 v24, v0

    move-object/from16 v25, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v15

    move-object/from16 v33, v14

    invoke-interface/range {v22 .. v33}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0

    if-gez v0, :cond_11

    const-string v0, "WallpaperService"

    const-string v2, "Failed to add window while updating wallpaper surface."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v1, v2, v5}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move/from16 v41, v14

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v15, v40

    move v7, v4

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :catch_3
    move-exception v0

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :catch_4
    move-exception v0

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :catch_5
    move-exception v0

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :catch_6
    move-exception v0

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :catch_7
    move-exception v0

    move/from16 v35, v6

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move v7, v4

    goto/16 :goto_1f

    :cond_12
    move/from16 v35, v6

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v41, v14

    move/from16 v40, v15

    :goto_11
    :try_start_c
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_13

    if-nez v7, :cond_13

    :try_start_d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v15, v40

    goto/16 :goto_f

    :cond_13
    :try_start_e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_12
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v5, v5, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, -0x1

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_13

    :try_start_f
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_12

    :try_start_10
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_11

    move/from16 v62, v12

    :try_start_11
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_10

    move/from16 v63, v13

    :try_start_12
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f

    move/from16 v64, v7

    :try_start_13
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v65, v7

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v7, v7, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v42, v0

    move-object/from16 v43, v2

    move/from16 v44, v5

    move-object/from16 v45, v6

    move/from16 v46, v8

    move/from16 v47, v9

    move-object/from16 v52, v10

    move-object/from16 v53, v11

    move-object/from16 v54, v14

    move-object/from16 v55, v15

    move-object/from16 v56, v3

    move-object/from16 v57, v4

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move-object/from16 v60, v65

    move-object/from16 v61, v7

    invoke-interface/range {v42 .. v61}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v0

    move v2, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_e

    if-nez v64, :cond_14

    :try_start_14
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    neg-int v9, v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    neg-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    move/from16 v15, v40

    :goto_13
    move/from16 v7, p3

    move/from16 v8, p2

    goto/16 :goto_1f

    :cond_14
    :goto_14
    move v4, v3

    move v3, v0

    :try_start_15
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_e

    if-eq v0, v3, :cond_15

    const/4 v15, 0x1

    :try_start_16
    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_a

    move/from16 v40, v15

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_13

    :cond_15
    :goto_15
    :try_start_17
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_e

    if-eq v0, v4, :cond_16

    const/4 v5, 0x1

    :try_start_18
    iput v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_b

    move v15, v5

    goto :goto_16

    :catch_b
    move-exception v0

    move v15, v5

    goto :goto_13

    :cond_16
    move/from16 v15, v40

    :goto_16
    :try_start_19
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_a

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    or-int v5, v16, v0

    :try_start_1a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    or-int/2addr v5, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    or-int/2addr v5, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    or-int/2addr v5, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_d

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    or-int v16, v5, v0

    :try_start_1b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_a

    return-void

    :cond_17
    const/4 v5, 0x0

    move v6, v5

    :try_start_1c
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v63, :cond_18

    const/4 v5, 0x1

    :try_start_1d
    iput-boolean v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/4 v6, 0x1

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_18

    array-length v5, v0

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v5, :cond_18

    aget-object v8, v0, v7

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :catchall_0
    move-exception v0

    move/from16 v5, p3

    move/from16 v8, p2

    goto/16 :goto_1c

    :cond_18
    if-nez v62, :cond_1a

    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_19

    goto :goto_18

    :cond_19
    const/4 v0, 0x0

    goto :goto_19

    :cond_1a
    :goto_18
    const/4 v0, 0x1

    :goto_19
    move/from16 v7, p3

    or-int v5, v7, v0

    move/from16 v8, p2

    if-nez v8, :cond_1b

    if-nez v62, :cond_1b

    if-nez v63, :cond_1b

    if-nez v41, :cond_1b

    if-eqz v15, :cond_1c

    :cond_1b
    const/4 v6, 0x1

    :try_start_1e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    iget v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v7, v9, v10}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v7, v0

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v7, :cond_1c

    aget-object v10, v0, v9

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v10, v11, v12, v13, v14}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_1c
    if-eqz v16, :cond_1d

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    iput v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    iput v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v9

    iput v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v9

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/view/WindowInsets;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    const/16 v24, 0x0

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v10}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v26

    const/16 v27, 0x0

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    invoke-direct/range {v22 .. v28}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    :cond_1d
    const-string v0, "WallpaperService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSurface redrawNeeded="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " didSurface="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1e

    if-eqz v6, :cond_20

    :cond_1e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_20

    array-length v7, v0

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v7, :cond_20

    aget-object v10, v0, v9

    instance-of v11, v10, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v11, :cond_1f

    move-object v11, v10

    check-cast v11, Landroid/view/SurfaceHolder$Callback2;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v11, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_20
    if-eqz v6, :cond_22

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_22

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_21

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const-string v0, "WallpaperService"

    const-string/jumbo v7, "updateSurface onVisibilityChanged visible: true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    const-string v0, "WallpaperService"

    const-string/jumbo v7, "updateSurface onVisibilityChanged visible: false"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_22
    const/4 v7, 0x0

    :try_start_1f
    iput-boolean v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_23

    const-string v0, "WallpaperService"

    const-string/jumbo v7, "updateSurface : finish redrawing"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSleepMode:Z

    if-eqz v0, :cond_23

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "WallpaperService"

    const-string v7, "If sleep state, InfinityWallpaper should draw black screen once"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    :cond_23
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    nop

    nop

    move v4, v5

    goto/16 :goto_20

    :catchall_1
    move-exception v0

    goto :goto_1c

    :catchall_2
    move-exception v0

    move/from16 v7, p3

    move/from16 v8, p2

    move v5, v7

    :goto_1c
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_24

    const-string v7, "WallpaperService"

    const-string/jumbo v9, "updateSurface : finish redrawing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v7, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    iget-boolean v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsSleepMode:Z

    if-eqz v7, :cond_24

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v7

    if-eqz v7, :cond_24

    const-string v7, "WallpaperService"

    const-string v9, "If sleep state, InfinityWallpaper should draw black screen once"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    :cond_24
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v7}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    throw v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_c

    :catch_c
    move-exception v0

    move v7, v5

    goto/16 :goto_1f

    :catch_d
    move-exception v0

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v16, v5

    goto/16 :goto_1f

    :catch_e
    move-exception v0

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v15, v40

    goto/16 :goto_1f

    :catch_f
    move-exception v0

    move/from16 v64, v7

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v15, v40

    goto/16 :goto_1f

    :catch_10
    move-exception v0

    move/from16 v64, v7

    move/from16 v63, v13

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v15, v40

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v7, p3

    move/from16 v8, p2

    goto :goto_1e

    :catch_12
    move-exception v0

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v8, p2

    goto :goto_1d

    :catch_13
    move-exception v0

    move v8, v3

    move/from16 v64, v7

    move/from16 v62, v12

    move/from16 v63, v13

    :goto_1d
    move v7, v4

    :goto_1e
    move/from16 v15, v40

    goto :goto_1f

    :catch_14
    move-exception v0

    move/from16 v35, v6

    move/from16 v64, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move v7, v4

    goto :goto_1f

    :catch_15
    move-exception v0

    move/from16 v18, v5

    move/from16 v35, v6

    move/from16 v64, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    move/from16 v62, v12

    move/from16 v63, v13

    move/from16 v41, v14

    move/from16 v40, v15

    move v8, v3

    move v7, v4

    :goto_1f
    move v4, v7

    :goto_20
    return-void
.end method
