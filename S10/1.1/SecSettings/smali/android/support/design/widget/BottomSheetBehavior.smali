.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field mActivePointerId:I

.field private mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field mMaxOffset:I

.field private mMaximumVelocity:F

.field mMinOffset:I

.field private mNestedScrolled:Z

.field mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mPeekHeightMin:I

.field private mSkipCollapsed:Z

.field mState:I

.field mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    sget-object v0, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v3, v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    :cond_0
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_0
    sget v2, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    sget v2, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    return-void
.end method

.method private getYVelocity()F
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getPeekHeightMin()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_4

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v6, v3, v7}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    :cond_4
    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    if-ne v7, v4, :cond_5

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, p2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_2

    :cond_6
    :pswitch_1
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v3, :cond_7

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    return v1

    :cond_7
    :goto_2
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    nop

    :cond_9
    move-object v3, v5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    if-eqz v3, :cond_a

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v4, v2, :cond_a

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    move v1, v2

    nop

    :cond_a
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    :cond_1
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v3, v2

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_7
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    :cond_8
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p3, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v2, v1, p5

    const/4 v3, 0x1

    if-lez p5, :cond_3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ge v2, v4, :cond_2

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v4, v1, v4

    aput v4, p6, v3

    aget v4, p6, v3

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_2
    aput p5, p6, v3

    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_3
    if-gez p5, :cond_6

    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le v2, v4, :cond_5

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int v4, v1, v4

    aput v4, p6, v3

    aget v4, p6, v3

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2

    :cond_5
    :goto_1
    aput p5, p6, v3

    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_7

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    const/4 v1, 0x4

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    const/4 v1, 0x3

    :goto_0
    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    nop

    move v0, v2

    :goto_1
    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    nop

    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p2, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v1, :cond_5

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_5
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public setHideable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    if-eq v1, p1, :cond_2

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    return-void
.end method

.method setStateInternal(I)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 5

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method
