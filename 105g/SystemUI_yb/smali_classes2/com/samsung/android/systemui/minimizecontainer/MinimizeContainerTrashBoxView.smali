.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;
.super Landroid/widget/FrameLayout;
.source "MinimizeContainerTrashBoxView.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCircleBackgroundView:Landroid/widget/ImageView;

.field private mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDisplayWidth:I

.field private mHideTrashBoxRunnable:Ljava/lang/Runnable;

.field private mIsTrashBoxCoverOpened:Z

.field private mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

.field private mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

.field private mRemoveRangeBounds:Landroid/graphics/Rect;

.field private mRemoveRangeHeight:I

.field private mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mTargetTrashView:Landroid/view/View;

.field private mTmpLocation:[I

.field private mTrashBoxBodyView:Landroid/widget/ImageView;

.field private mTrashBoxCircleBgCloseColor:I

.field private mTrashBoxCircleBgOpenColor:I

.field private mTrashBoxCoverDirection:I

.field private mTrashBoxCoverView:Landroid/widget/ImageView;

.field private mTrashBoxGroupView:Landroid/widget/LinearLayout;

.field private mTrashBoxIconView:Landroid/view/View;

.field private mTrashBoxTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTmpLocation:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToHideCircleBackgroundView()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToBounceTrashBoxIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToSwallowTrash()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToHideTrashBoxText()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToHideTrashBoxGroupView()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    return-object v0
.end method

.method private animateToBounceTrashBoxIcon()V
    .locals 12

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3e800000    # 0.25f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x10a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f8ccccd    # 1.1f

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3f8ccccd    # 1.1f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToChangeCircleBackgroundViewColor(Z)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateToChangeCircleBackgroundViewColor, openTrashBoxCover="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    aput v3, v0, v2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    aput v3, v0, v2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    aput v2, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideCircleBackgroundView()V
    .locals 11

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToHideTrashBoxGroupView()V
    .locals 11

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToHideTrashBoxText()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToMoveTrashToTrashBox(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v4, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTmpLocation:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    int-to-float v4, v4

    iget-object v7, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v4, v7

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v5, v9, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v15, v11

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ee66666    # 0.45f

    const/high16 v14, 0x3f800000    # 1.0f

    const v16, 0x3ee66666    # 0.45f

    move-object/from16 v11, v18

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v10

    move/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v9, v12

    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v3, v12

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v12, 0x10a

    invoke-virtual {v3, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    new-instance v6, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$7;

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$7;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToOpenCloseTrashBoxCover(Z)V
    .locals 12

    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/high16 v0, -0x3e900000    # -15.0f

    :cond_0
    if-eqz p1, :cond_1

    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, -0x42b33333    # -0.05f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    move v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, -0x42b33333    # -0.05f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :goto_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v4, 0x10a

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    sget-object v4, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToScaleTrashBoxIconLayout(FF)V
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToShowHideCircleBackgroundView(Z)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v3

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v3

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v3, 0xe9

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$6;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToShowTrashBoxGroupView()V
    .locals 11

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$Utils;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x14d

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToSwallowTrash()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private closeTrashBoxCover()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToChangeCircleBackgroundViewColor(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToScaleTrashBoxIconLayout(FF)V

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    :cond_0
    return-void
.end method

.method private openTrashBoxCover()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToChangeCircleBackgroundViewColor(Z)V

    :cond_0
    return-void
.end method

.method private updateRemoveRangeBounds()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mDisplayWidth:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mDisplayWidth:I

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mDisplayWidth:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MinimizeContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TrashBox] updateRemoveRangeBounds: RemoveRangeBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateTrashBoxCoverDirection(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mDisplayWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToScaleTrashBoxIconLayout(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method clearAllAnimations()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[TrashBox] clearAnimations()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method hideTrashBox()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[TrashBox] hideTrashBox()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToHideTrashBoxGroupView()V

    return-void
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getPolicyController()Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeHeight:I

    const v0, 0x7f0a0615

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0601a0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601a1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08042e

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a0339

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0617

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0618

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    const v1, 0x7f0a0616

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    const v1, 0x7f0a0614

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    const v2, 0x7f0100a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f0a061a

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    return-void
.end method

.method isInRemoveRange(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method removeRunnables()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v1, "[TrashBox] removeRunnables()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method showTrashBox(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const-string v1, "fullscreen_mode_request_trash_box"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    const-string v2, "[TrashBox] showTrashBox()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mPolicyController:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->setTrashBoxShownState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->updateRemoveRangeBounds()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToShowTrashBoxGroupView()V

    iput-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTrashBoxCoverDirection:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->updateTrashBoxCoverState(Landroid/graphics/Rect;)V

    return v2

    :cond_1
    return v1
.end method

.method throwTrashAway(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->animateToMoveTrashToTrashBox(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mMinimizeContainerManager:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateTrashBoxCoverState(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->openTrashBoxCover()V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->updateTrashBoxCoverDirection(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerTrashBoxView;->closeTrashBoxCover()V

    :goto_0
    return-void
.end method
