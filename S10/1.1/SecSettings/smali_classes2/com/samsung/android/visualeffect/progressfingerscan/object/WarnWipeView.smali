.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnWipeView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnimationY:F

.field private mCurrentYPos:F

.field private mUiVersion:I

.field private mWaterDropView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string v0, "WarnWipeView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    const-string v1, "WarnWipeView"

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "WarnWipeView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "WarnWipeView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "WarnWipeView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_wipe_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mUiVersion:I

    if-gt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_wipe_water:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onUpdate(IF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0xe9

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v6, v3

    iput v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v6, v7, v4, v8, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v2, v6

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x11b

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v3

    iput v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f0f5c29    # 0.56f

    const v8, 0x3f2b851f    # 0.67f

    invoke-direct {v6, v7, v4, v8, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v2, v6

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x14d

    const/high16 v6, -0x3fb00000    # -3.25f

    mul-float/2addr v6, v3

    iput v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea3d70a    # 0.32f

    const v8, 0x3eeb851f    # 0.46f

    invoke-direct {v6, v7, v4, v8, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v2, v6

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0x96

    const/high16 v4, 0x40100000    # 2.25f

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f266666    # 0.65f

    const v7, 0x3e2e147b    # 0.17f

    invoke-direct {v4, v7, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v2, v4

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x29a

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
