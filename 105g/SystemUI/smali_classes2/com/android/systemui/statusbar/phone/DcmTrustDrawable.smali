.class public Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DcmTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;
    }
.end annotation


# instance fields
.field private final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAlpha:I

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimating:Z

.field private mContext:Landroid/content/Context;

.field private mCurAlpha:I

.field private mCurAnimator:Landroid/animation/Animator;

.field private mCurInnerRadius:F

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mInnerRadiusEnter:F

.field private mInnerRadiusExit:F

.field private mInnerRadiusVisibleMax:F

.field private mInnerRadiusVisibleMin:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mState:I

.field private mThickness:F

.field private mTrustManaged:Z

.field private mVisibleAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMin:F

    const v2, 0x7f070169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    const v2, 0x7f070814

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusExit:F

    const v2, 0x7f070813

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    const v2, 0x7f070817

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    const v2, 0x10c000e

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000d

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    return-void
.end method

.method private configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p6, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-object p1
.end method

.method private makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;
    .locals 13

    move-object v7, p0

    const/4 v8, 0x2

    new-array v0, v8, [I

    const/4 v9, 0x0

    aput p3, v0, v9

    const/4 v10, 0x1

    aput p4, v0, v10

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, v7

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-array v0, v8, [F

    aput p1, v0, v9

    aput p2, v0, v10

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v11, v2, v9

    aput-object v0, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;Lcom/android/systemui/statusbar/phone/DcmTrustDrawable$1;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v1
.end method

.method private makeEnterAnimator(FI)Landroid/animation/Animator;
    .locals 10

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v4, 0xbc

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeExitAnimator(FI)Landroid/animation/Animator;
    .locals 10

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusExit:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private makeVisibleAnimator()Landroid/animation/Animator;
    .locals 10

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMin:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0xbc

    const/16 v4, 0x66

    const-wide/16 v5, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private updateState(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    move v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    if-nez p1, :cond_7

    if-ne v0, v5, :cond_6

    const/4 v0, 0x2

    :cond_6
    if-ne v0, v4, :cond_7

    const/4 v0, 0x0

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_8
    if-nez v0, :cond_9

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    goto :goto_1

    :cond_9
    if-ne v0, v5, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeEnterAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_1

    :cond_a
    if-ne v0, v2, :cond_b

    const/16 v1, 0xbc

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_b
    if-ne v0, v4, :cond_c

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeExitAnimator(FI)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_c
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    :cond_e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrustManaged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mTrustManaged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->updateState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mAnimating:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurAlpha:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mCurInnerRadius:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMin:F

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusVisibleMax:F

    const v1, 0x7f070814

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusExit:F

    const v1, 0x7f070813

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mInnerRadiusEnter:F

    const v1, 0x7f070817

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DcmTrustDrawable;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
