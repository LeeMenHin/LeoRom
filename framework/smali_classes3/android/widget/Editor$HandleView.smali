.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final MAGNIFYING_FACTOR:F

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContentsViewOffset:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mFirstParentY:I

.field private final mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field protected mHorizontalGravity:I

.field protected mHorizontalOffset:F

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mIsHideAnimating:Z

.field private mIsRestoring:Z

.field private mIsShowAnimating:Z

.field private mIsSwitching:Z

.field protected mIsVerticalScrolled:Z

.field protected mLastParentX:I

.field protected mLastParentXOnScreen:I

.field protected mLastParentY:I

.field protected mLastParentYOnScreen:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPrevLine:I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field protected mTouchOffsetY:F

.field protected mTouchToWindowOffsetX:F

.field protected mTouchToWindowOffsetY:F

.field protected mVerticalOffset:F

.field protected mVerticalScrolledYOffset:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 8

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    const/4 v0, 0x5

    new-array v2, v0, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    new-instance v2, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Landroid/widget/Editor$HandleView;->MAGNIFYING_FACTOR:F

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    new-instance v3, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3eeb851f    # 0.46f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x10102c8

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    int-to-float v1, v0

    const v2, -0x41666666    # -0.3f

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    int-to-float v1, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    return-void
.end method

.method static synthetic access$6600(Landroid/widget/Editor$HandleView;)Landroid/widget/Editor$HandleView;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7402(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    return p1
.end method

.method static synthetic access$7500(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return v0
.end method

.method static synthetic access$7802(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p1
.end method

.method static synthetic access$7900(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$7902(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$8000(Landroid/widget/Editor$HandleView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    return v0
.end method

.method static synthetic access$8100(Landroid/widget/Editor$HandleView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    return v0
.end method

.method static synthetic access$8200(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$8202(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    return-void
.end method

.method private filterOnTouchUp(Z)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    :cond_1
    return-void
.end method

.method private getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "bounds"

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/widget/Editor$HandleView$3;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/widget/Editor$HandleView$4;

    invoke-direct {v1, p0, p2}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v2, v3, 0x4

    goto :goto_1

    :cond_4
    div-int/lit8 v2, p1, 0x4

    goto :goto_1

    :cond_5
    div-int/lit8 v2, p1, 0x2

    nop

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v5, v0, v5

    sub-int v6, v2, v1

    sub-int v6, v0, v6

    add-int/2addr v6, p1

    invoke-direct {v3, v5, v4, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string v4, "bounds"

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/widget/Editor$HandleView$10;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$10;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v3
.end method

.method private getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4800(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4800(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$6300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getRestorePositionAnimator()Landroid/animation/ValueAnimator;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$5900(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v2, v3

    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v2, v4

    aget v8, v1, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v1, v3

    aget v8, v2, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v2, v3

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v8, v1, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v1, v3

    aget v8, v2, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v3

    new-array v8, v0, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v9, "x"

    new-array v10, v0, [I

    aget v11, v1, v3

    aput v11, v10, v3

    aget v11, v2, v3

    aput v11, v10, v4

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v3

    const-string/jumbo v9, "y"

    new-array v0, v0, [I

    aget v10, v1, v4

    aput v10, v0, v3

    aget v3, v2, v4

    aput v3, v0, v4

    invoke-static {v9, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v5
.end method

.method private getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string v5, "bounds"

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v4, v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v5, p0}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v5, p0, v2, v3}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method private handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 7

    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private isScrollChanged(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

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

.method private isValid()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private magnifySize()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v3, v4

    nop

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    const/4 v4, -0x1

    move v5, v3

    goto :goto_0

    :pswitch_0
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    const/4 v5, -0x1

    nop

    :goto_0
    nop

    const/4 v6, 0x0

    if-ne v4, v3, :cond_0

    return v6

    :cond_0
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    const/4 v9, 0x1

    if-eq v5, v3, :cond_1

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    if-ne v8, v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    if-eqz v3, :cond_4

    if-ge v4, v5, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_3

    :cond_3
    move v11, v6

    :goto_3
    if-eq v10, v11, :cond_4

    move v10, v9

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    const/4 v11, 0x2

    new-array v12, v11, [I

    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    aget v14, v12, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v15

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v15, v6

    int-to-float v6, v15

    if-eqz v3, :cond_6

    if-ne v2, v11, :cond_5

    move v11, v9

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    xor-int/2addr v11, v10

    if-eqz v11, :cond_6

    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v14, v11

    goto :goto_6

    :cond_6
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v14, v11

    :goto_6
    if-eqz v3, :cond_8

    if-ne v2, v9, :cond_7

    move v11, v9

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    xor-int/2addr v11, v10

    if-eqz v11, :cond_8

    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v6, v11

    goto :goto_8

    :cond_8
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v6, v11

    :goto_8
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v11

    invoke-static {v11}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Magnifier;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v15

    invoke-static {v15}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Magnifier;->getZoom()F

    move-result v15

    div-float/2addr v11, v15

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v11, v15

    sub-float v16, v14, v16

    cmpg-float v16, v13, v16

    if-ltz v16, :cond_a

    div-float v16, v11, v15

    add-float v16, v6, v16

    cmpl-float v16, v13, v16

    if-lez v16, :cond_9

    goto :goto_9

    :cond_9
    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v15

    add-int/2addr v9, v15

    int-to-float v9, v9

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v9, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v9, v15

    iput v9, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x1

    return v9

    :cond_a
    :goto_9
    const/4 v9, 0x0

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restore()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getRestorePositionAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Editor"

    const-string/jumbo v4, "restorePositionAnimator is null. hide() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setVisible(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldShow()Z
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private startTouchUpFilter(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    return-void
.end method

.method private tooLargeTextForMagnifier()Z
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Magnifier;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    return-void
.end method

.method protected final dismissMagnifier()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$7000(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->access$6702(Landroid/widget/Editor;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$7100(Landroid/widget/Editor;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v1, v0}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 5

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_0

    :cond_0
    sub-int v3, v0, v1

    sub-int v4, v2, v0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    nop

    :goto_0
    iget v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v4, v3

    return v4
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected abstract getMagnifierHandleTrigger()I
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method protected hideAfterDelay()V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    :cond_0
    return-void
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected isScreenOut(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onHandleMoved()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1}, Landroid/widget/Editor;->access$7200(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x1002

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_0

    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0

    :cond_0
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iget v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mVerticalScrolledYOffset:I

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->isScrollChanged(Landroid/view/MotionEvent;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v7, v0, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v8, v9

    nop

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {p0, v7, v8, v1}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iput v1, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->magnifySize()V

    nop

    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$5900(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_6

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$6100(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v4, :cond_5

    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    :cond_5
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_6
    return-void
.end method

.method protected removeHiderCallback()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    return-void
.end method

.method protected updateDrawable()V
    .locals 8

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->isScreenOut(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    xor-int/lit8 v5, v2, 0x1

    move v2, v5

    if-eqz v2, :cond_3

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v7}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    :cond_5
    return-void
.end method

.method protected final updateMagnifier(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v2}, Landroid/widget/Editor;->access$6702(Landroid/widget/Editor;Z)Z

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidateCursorPath()V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$6800(Landroid/widget/Editor;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

    invoke-virtual {v2, v3}, Landroid/widget/Magnifier;->setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6900(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    :goto_1
    return-void
.end method

.method protected abstract updatePosition(FFZ)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v2, v0, v1

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v3, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    :cond_5
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    :goto_0
    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    :cond_8
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_9
    return-void
.end method

.method protected updatePositionDuringDragging(II)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, v1, v2

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    aget v4, v1, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    new-array v0, v0, [I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v0, v2

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v4, v0, v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v4, v0, v2

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v2

    aget v3, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v3, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method protected abstract updateSelection(I)V
.end method
