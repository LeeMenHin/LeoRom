.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field mAnimLayer:I

.field mAnimationIsEntrance:Z

.field private mAnimationStartDelayed:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAttrType:I

.field mChildrenDetached:Z

.field final mContext:Landroid/content/Context;

.field mCustomOffsetApplied:Z

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastClipRect:Landroid/graphics/Rect;

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastDtDx:F

.field private mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field mLastLayer:I

.field private mOffsetPositionForStackResize:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field mPipAnimationStarted:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field private mTmpAnimatingBounds:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field mTmpFinalClipRect:Landroid/graphics/Rect;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpSize:Landroid/graphics/Rect;

.field private mTmpSourceBounds:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field final mWin:Lcom/android/server/wm/WindowState;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mCustomOffsetApplied:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyCrop: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private applyFreeformAlphaAtWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mInputMethodClient:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, v0, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v2, v0, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_2
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_3

    return v2

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v3, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating crop win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mLastCrop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v3, :cond_5

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying decor to crop win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mDecorFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mSystemDecorRect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move v4, v2

    goto :goto_1

    :cond_7
    :goto_0
    move v4, v5

    :goto_1
    nop

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v6

    if-nez v6, :cond_8

    move v2, v5

    nop

    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_9

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Initial clip rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " fullscreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_a

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Clip rect after stack adjustment="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    return v5
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p1, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void
.end method

.method private getLayerStack()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    :cond_2
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x7db

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x960

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getEnsureDockedViewInternal()Lcom/android/server/wm/EnsureDockedViewInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/EnsureDockedViewInternal;->deferStartingAnimations()V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v2

    if-eqz v2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transition animation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " skipped in VS mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_4
    :goto_1
    const-string v2, "WSA#applyAnimationLocked"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v1, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v2, v5, p1}, Lcom/android/server/policy/WindowManagerPolicy;->selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    const/4 v8, -0x1

    if-eq v2, v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    move-object v6, v8

    goto :goto_4

    :cond_6
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v5, 0x3

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x2

    goto :goto_3

    :pswitch_3
    const/4 v5, 0x1

    goto :goto_3

    :pswitch_4
    const/4 v5, 0x0

    nop

    :goto_3
    if-ltz v5, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v5, v7}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v6

    :cond_7
    :goto_4
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v8, :cond_8

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyAnimation: win="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " anim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " attr=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " a="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " transit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isEntrance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " Callers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v6, :cond_12

    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v8, :cond_9

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded animation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mRemoteWindowAnimationController:Lcom/android/server/wm/RemoteWindowAnimationController;

    if-nez p2, :cond_b

    if-eqz v8, :cond_a

    invoke-virtual {v8, p2}, Lcom/android/server/wm/RemoteWindowAnimationController;->visibilityChangedAnimationNeeded(Z)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->createSynchronizedImAnimationControllerLocked()V

    :cond_b
    if-eqz v8, :cond_c

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/SamsungWindowManagerService;->isSynchronizedImAnimationExcutableLocked()Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    return v7

    :cond_c
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mRemoteWindowAnimationController:Lcom/android/server/wm/RemoteWindowAnimationController;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mRemoteWindowAnimationController:Lcom/android/server/wm/RemoteWindowAnimationController;

    invoke-virtual {v7, p2}, Lcom/android/server/wm/RemoteWindowAnimationController;->visibilityChangedAnimationNeeded(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7, p2}, Lcom/android/server/wm/RemoteWindowAnimationController;->startVisibilityChangedAnimation(Z)V

    goto :goto_5

    :cond_d
    invoke-virtual {v7, p2}, Lcom/android/server/wm/RemoteWindowAnimationController;->startAnimation(Z)V

    :goto_5
    goto/16 :goto_7

    :cond_e
    const/4 v7, 0x5

    if-ne p1, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->calculateStartingWinExitAnimDuration(Lcom/android/server/wm/WindowState;I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_10

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-lez v9, :cond_10

    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v9, :cond_f

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyAnimation: calculatedDuration is set, calculatedDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", originalDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_6

    :cond_10
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_11

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyAnimation: win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", winAnimDuration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", appTokenAnim="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_7
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    :cond_12
    goto :goto_8

    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    :goto_8
    if-nez p2, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    :cond_14
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_2
    return-void
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelExitAnimationForNextAnimationLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    return-void
.end method

.method commitFinishDrawingLocked()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cur mDrawState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v0

    :cond_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method computeShownFrameLocked()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isPortraitWallpaper()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_a

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v15, v12, v13

    if-ltz v15, :cond_1

    cmpl-float v15, v14, v13

    if-ltz v15, :cond_1

    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v15, v12

    add-float v7, v13, v16

    div-float v16, v15, v14

    add-float v8, v13, v16

    div-float v5, v12, v15

    div-float v15, v14, v15

    invoke-virtual {v11, v7, v8, v5, v15}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    :goto_2
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v11, v5, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v5, v13, v5

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v13, v7

    invoke-virtual {v11, v5, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v11, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    invoke-virtual {v11, v10}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v5, 0x0

    aget v5, v10, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v5, 0x3

    aget v5, v10, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aget v4, v10, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v4, 0x4

    aget v4, v10, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v4, v5, v7, v8, v12}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-eqz v6, :cond_5

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFreeformAlphaAtWindow()V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v4, :cond_9

    :cond_6
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v4, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v7

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v4, v4

    const-wide/16 v7, 0x0

    cmpl-double v4, v4, v7

    if-nez v4, :cond_9

    :cond_7
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeShownFrameLocked: Animating "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mAlpha="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " screen="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_3

    :cond_8
    const-string/jumbo v7, "null"

    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    iget-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v5, v5, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v5, :cond_b

    return-void

    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v5

    if-eqz v5, :cond_c

    return-void

    :cond_c
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v5, :cond_d

    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computeShownFrameLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " not attached, mAlpha="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFreeformAlphaAtWindow()V

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10, v10}, Lcom/android/server/wm/WallpaperController;->rotateWallpaperToPortLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;II)Z

    move-result v8

    if-eqz v8, :cond_e

    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->getValues([F)V

    aget v8, v5, v10

    iput v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v8, 0x3

    aget v8, v5, v8

    iput v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aget v4, v5, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v4, 0x4

    aget v4, v5, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    :cond_e
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v4, :cond_f

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    :cond_f
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .locals 22

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const v0, 0x6bd83

    move v14, v0

    goto :goto_0

    :cond_1
    move/from16 v14, p1

    :goto_0
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x4

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x80

    :cond_4
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    or-int/2addr v0, v2

    :cond_5
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    :cond_6
    move v1, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {v11, v12, v15}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_7

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating surface in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v16, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    move v0, v8

    goto :goto_1

    :cond_8
    move v0, v13

    :goto_1
    if-eqz v0, :cond_9

    const/4 v2, -0x3

    goto :goto_2

    :cond_9
    :try_start_1
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_2
    move v7, v2

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-nez v2, :cond_a

    :try_start_2
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_a

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_a

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_a

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_a

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_a

    or-int/lit16 v1, v1, 0x400

    goto :goto_3

    :catch_0
    move-exception v0

    move v4, v1

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move v6, v1

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    move v15, v8

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move v4, v1

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v15, v8

    goto/16 :goto_e

    :cond_a
    :goto_3
    move v6, v1

    :try_start_3
    new-instance v5, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    move-object v1, v5

    move v4, v10

    move-object v13, v5

    move v5, v9

    move/from16 v17, v6

    move v6, v7

    move/from16 v18, v0

    move v0, v7

    move/from16 v7, v17

    move-object/from16 v19, v15

    move v15, v8

    move-object v8, v11

    move/from16 v20, v9

    move v9, v14

    move/from16 v21, v10

    move/from16 v10, p2

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    iput v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    invoke-virtual {v12, v15}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v15, :cond_b

    move v1, v15

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isBackgroundNeededTask()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/android/server/wm/Task;->mBackgroundController:Lcom/android/server/wm/TaskBackgroundController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskBackgroundController;->hasBackgroundSurface()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v3, Lcom/android/server/wm/Task;->mBackgroundController:Lcom/android/server/wm/TaskBackgroundController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskBackgroundController;->createBackgroundSurface()V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move/from16 v6, v17

    move-object/from16 v3, v19

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    :goto_5
    move/from16 v5, v20

    move/from16 v2, v21

    goto/16 :goto_e

    :cond_c
    :goto_6
    :try_start_6
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetEffects()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    if-nez v1, :cond_e

    :try_start_7
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z
    :try_end_7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_8

    :cond_e
    :goto_7
    :try_start_8
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CREATE SURFACE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN SESSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v3, v19

    :try_start_9
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move/from16 v4, v17

    :try_start_a
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/view/WindowManager$TooManySurfacesException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :goto_8
    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move v6, v4

    goto/16 :goto_a

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    move/from16 v4, v17

    goto/16 :goto_9

    :catch_a
    move-exception v0

    move/from16 v4, v17

    move v6, v4

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v2, v21

    goto/16 :goto_e

    :catch_c
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_9

    :catch_d
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move v6, v4

    goto/16 :goto_a

    :catch_e
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v2, v21

    goto/16 :goto_e

    :catch_f
    move-exception v0

    move v4, v6

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    goto :goto_9

    :catch_10
    move-exception v0

    move v4, v6

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    move v15, v8

    goto/16 :goto_a

    :catch_11
    move-exception v0

    move v4, v6

    move-object v3, v15

    move v15, v8

    move v5, v9

    move v2, v10

    goto/16 :goto_e

    :catch_12
    move-exception v0

    move-object v3, v15

    move v15, v8

    move v4, v1

    move v5, v9

    move v2, v10

    goto/16 :goto_e

    :catch_13
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    move v4, v1

    :goto_9
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSurfaceLocked, exception occurs, mWin="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", surface(parent)="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WindowManager"

    const-string v2, "Exception creating surface (parent dead?)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v16

    :catch_14
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    move-object v3, v15

    move v15, v8

    move v6, v1

    :goto_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TOO_MANY_SURFACES_EXCEPTION_BY_SURFACE_FLINGER:Z

    if-eqz v1, :cond_10

    const-string v1, "WindowManager"

    const-string v2, "A process tried to create too many surfaces"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mProcessIdForStatingWindow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mProcessIdForStatingWindow:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_b

    :cond_f
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :goto_b
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v16

    :cond_10
    nop

    move v4, v6

    :goto_c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_11

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", set left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_12

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_12
    move/from16 v5, v20

    move/from16 v2, v21

    :goto_d
    iput-boolean v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_13

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created surface "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    :catch_15
    move-exception v0

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v15, v8

    move v4, v1

    :goto_e
    const-string v1, "WindowManager"

    const-string v6, "OutOfResourcesException creating surface"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v6, "create"

    invoke-virtual {v1, v11, v6, v15}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v16
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v1, "DESTROY PENDING"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyPreservedSurfaceLocked, REPARENT from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    return-void
.end method

.method destroySurface()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    throw v2
.end method

.method destroySurfaceLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHidden:Z

    :cond_2
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY PENDING"

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_0

    :cond_7
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY"

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v4, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, v5, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroySurfaceLocked, REPARENT from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    :cond_b
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-void
.end method

.method detachChildren()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "HAS_DRAWN"

    return-object v0

    :pswitch_1
    const-string v0, "READY_TO_SHOW"

    return-object v0

    :pswitch_2
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    :pswitch_3
    const-string v0, "DRAW_PENDING"

    return-object v0

    :pswitch_4
    const-string v0, "NO_SURFACE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimationStartDelayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    :cond_b
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing drawing window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return v2
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method getLayer()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    return v0
.end method

.method getShown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method isAnimationSet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isForceScaled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method markPreservedSurfaceForDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method onAnimationFinished()V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation done in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": exiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reportedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->clearRemoteWindowAnimationController()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    const/16 v2, 0x8

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x4

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_6
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation change skips hidden "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v3, :cond_3

    const-string/jumbo v3, "prepareSurfaceLocked"

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareSurface: No changes in animation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_7
    :goto_0
    const/4 v1, 0x1

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "alpha="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " layer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " matrix=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v7, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v7, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v8

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v8, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v9

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v9, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v10

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v10, v3

    move v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    :cond_c
    goto :goto_3

    :cond_d
    :goto_2
    const-string/jumbo v3, "prepareSurfaceLocked"

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_e

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Orientation change skips hidden "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_10

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation continue waiting for draw in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_10

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation change complete in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_4
    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    :cond_11
    return-void
.end method

.method preserveSurfaceLocked()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "SET FREEZE LAYER"

    invoke-static {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    nop

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_3

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setRelativeLayer(Landroid/view/SurfaceControl;I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    :goto_3
    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    return-void

    :cond_7
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preserveSurfaceLocked: Not has surface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    return-void
.end method

.method resetDrawState()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :goto_0
    return-void
.end method

.method seamlesslyRotate(Landroid/view/SurfaceControl$Transaction;II)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v5, v6, v3, v4, v2}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v15, p1

    invoke-virtual {v12, v15, v10, v11, v4}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v3

    iget v12, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v16, v7, v12

    iget v12, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v17, v8, v12

    iget v12, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v18, v9, v12

    const/16 v19, 0x0

    move-object v14, v15

    move v15, v4

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    return-void
.end method

.method setSecureLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpRectForCustomFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/4 v11, 0x1

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    iput-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mCustomOffsetApplied:Z

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    iget-boolean v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    iget-boolean v13, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    iget-boolean v3, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v8, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v11

    :goto_1
    move v14, v3

    if-eqz v14, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_2

    :cond_4
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    :goto_2
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v3, :cond_5

    move v3, v11

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v4, :cond_6

    move v4, v11

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    invoke-virtual {v3, v8, v4}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    :cond_7
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v4

    int-to-float v15, v4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v4

    int-to-float v6, v4

    iget-object v5, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    int-to-float v1, v4

    sub-float v1, v15, v1

    int-to-float v11, v2

    sub-float v11, v6, v11

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v17, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto :goto_5

    :cond_8
    move/from16 v17, v4

    :goto_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v18, v13

    iget-object v13, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v19, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v20, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-gtz v12, :cond_9

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lez v12, :cond_a

    :cond_9
    iget-object v12, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v13, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v13, v13, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    move/from16 v12, v20

    :goto_6
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v3

    iget-object v3, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v3}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v13, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    iget-object v13, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v22, v10

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v1, v10

    move/from16 v23, v14

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v1, v14

    div-float/2addr v10, v14

    move v14, v10

    sub-float v20, v3, v13

    mul-float v20, v20, v10

    add-float v20, v13, v20

    move/from16 v24, v3

    div-float v3, v20, v13

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    if-eqz v12, :cond_b

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    move/from16 v25, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    move/from16 v26, v13

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v11, v13

    move/from16 v27, v14

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v11, v14

    div-float v14, v13, v14

    sub-float v13, v3, v12

    mul-float/2addr v13, v10

    add-float/2addr v13, v12

    div-float/2addr v13, v12

    iput v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    goto :goto_7

    :cond_b
    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    :goto_7
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v3, v10

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v14

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v4, v3

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v10

    float-to-int v12, v12

    iget v13, v5, Landroid/graphics/Rect;->top:I

    move/from16 v28, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v2

    int-to-float v2, v13

    mul-float/2addr v2, v14

    float-to-int v2, v2

    iget v13, v5, Landroid/graphics/Rect;->left:I

    move/from16 v29, v4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float v4, v15, v4

    mul-float/2addr v4, v10

    sub-float v4, v15, v4

    float-to-int v4, v4

    add-int/2addr v13, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    move/from16 v30, v10

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    mul-float/2addr v10, v14

    sub-float v10, v6, v10

    float-to-int v10, v10

    add-int/2addr v4, v10

    invoke-virtual {v3, v12, v2, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :cond_c
    move-object/from16 v22, v10

    move/from16 v25, v12

    move/from16 v23, v14

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/4 v3, 0x0

    move/from16 v28, v2

    move/from16 v29, v4

    :goto_8
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v4, v10, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v2, v28, v2

    iget v4, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v12, v10, v12

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sub-int v4, v29, v4

    int-to-float v12, v2

    iget v13, v5, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v14, v10, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v12, v4

    iget v13, v5, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v10, v14

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    float-to-int v4, v12

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    int-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual {v10, v12, v13, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v10, :cond_d

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    :cond_d
    nop

    move-object v10, v3

    goto/16 :goto_b

    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v22, v10

    move/from16 v19, v12

    move/from16 v18, v13

    move/from16 v23, v14

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_13

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_11

    if-eqz v23, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v10

    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    move-object/from16 v4, v21

    goto :goto_9

    :cond_f
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v4, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iput v10, v4, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_10

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getRelativePosition(Landroid/graphics/Point;)V

    :cond_10
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v1, v4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v2, v4

    if-eqz v21, :cond_11

    move-object/from16 v4, v21

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    iput v10, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v11

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    :cond_11
    move-object/from16 v4, v21

    :goto_9
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v10, 0x9

    new-array v10, v10, [F

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11, v12, v3, v1, v2}, Lcom/android/server/wm/WallpaperController;->rotateWallpaperToPortLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;II)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v11, 0x2

    aget v11, v10, v11

    float-to-int v1, v11

    const/4 v11, 0x5

    aget v11, v10, v11

    float-to-int v2, v11

    :cond_12
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v10, v1

    int-to-float v11, v2

    invoke-virtual {v3, v10, v11, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto :goto_a

    :cond_13
    move-object/from16 v4, v21

    :goto_a
    move-object v10, v4

    :goto_b
    if-eqz v19, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v1, :cond_15

    :cond_14
    if-eqz v18, :cond_16

    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_16

    :cond_15
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->setGeometryAppliesWithResizeInTransaction(Z)V

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_16
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_17

    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v12, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v11, v12

    move-object v12, v5

    move v5, v11

    move v11, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    goto :goto_c

    :cond_17
    move-object v12, v5

    move v11, v6

    :goto_c
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_18
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->applyBlurEffect()V

    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method setWallpaperOffset(II)Z
    .locals 5

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4, v0, p1, p2}, Lcom/android/server/wm/WallpaperController;->rotateWallpaperToPortLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    aget v3, v2, v3

    float-to-int p1, v3

    const/4 v3, 0x5

    aget v3, v2, v3

    float-to-int p2, v3

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error positioning surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pos=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v4, -0x3

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_1
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v4, v5, :cond_3

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    return v3

    :cond_3
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10e00000003L

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
