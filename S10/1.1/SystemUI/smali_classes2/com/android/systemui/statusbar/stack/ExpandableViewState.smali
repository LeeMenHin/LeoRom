.class public Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "ExpandableViewState.java"


# static fields
.field public static final LOCATION_BOTTOM_STACK_HIDDEN:I = 0x10

.field public static final LOCATION_BOTTOM_STACK_PEEKING:I = 0x8

.field public static final LOCATION_FIRST_HUN:I = 0x1

.field public static final LOCATION_GONE:I = 0x40

.field public static final LOCATION_HIDDEN_TOP:I = 0x2

.field public static final LOCATION_MAIN_AREA:I = 0x4

.field public static final LOCATION_UNKNOWN:I = 0x0

.field private static final TAG_ANIMATOR_HEIGHT:I = 0x7f0a020b

.field private static final TAG_ANIMATOR_SHADOW_ALPHA:I = 0x7f0a051a

.field private static final TAG_ANIMATOR_TOP_INSET:I = 0x7f0a05d9

.field private static final TAG_END_HEIGHT:I = 0x7f0a0209

.field private static final TAG_END_SHADOW_ALPHA:I = 0x7f0a0518

.field private static final TAG_END_TOP_INSET:I = 0x7f0a05d7

.field private static final TAG_START_HEIGHT:I = 0x7f0a020a

.field private static final TAG_START_SHADOW_ALPHA:I = 0x7f0a0519

.field private static final TAG_START_TOP_INSET:I = 0x7f0a05d8

.field public static final VISIBLE_LOCATIONS:I = 0x5


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public invert:Ljava/lang/Boolean;

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f0a020b

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a0209

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x7f0a020a

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const v5, 0x7f0a0209

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_0

    return-void

    :cond_0
    const v8, 0x7f0a020b

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v11, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v11

    aget-object v5, v8, v14

    new-array v12, v12, [I

    aput v15, v12, v14

    aput v7, v12, v13

    invoke-virtual {v5, v12}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f0a0209

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {v1, v7, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    return-void

    :cond_2
    new-array v5, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v13

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v14, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    iget-wide v14, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v15, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v5, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v8, 0x7f0a0209

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x7f0a05d8

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const v5, 0x7f0a05d7

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_0

    return-void

    :cond_0
    const v8, 0x7f0a05d9

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v11

    aget-object v5, v8, v14

    new-array v13, v13, [I

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f0a05d7

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    return-void

    :cond_2
    new-array v5, v13, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v12

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-lez v13, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    :cond_3
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v5, v13}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v8, 0x7f0a05d7

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x7f0a0519

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const v5, 0x7f0a0518

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    return-void

    :cond_0
    const v8, 0x7f0a051a

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v11

    aget-object v5, v8, v14

    new-array v13, v13, [F

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a0518

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    return-void

    :cond_2
    new-array v5, v13, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v12

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-lez v13, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    :cond_3
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v5, v13}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v8, 0x7f0a0518

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a020b

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0a051a

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_2

    :cond_3
    const v1, 0x7f0a05d9

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-wide v3, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    if-nez v1, :cond_4

    iget-wide v2, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJZ)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->setHeadsUpIsVisible()V

    :cond_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    const/4 v10, 0x0

    if-eq v8, v9, :cond_0

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    cmpl-float v1, v11, v12

    if-eqz v1, :cond_1

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    :cond_2
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->setHeadsUpIsVisible()V

    :cond_3
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    const v0, 0x7f0a020b

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const v1, 0x7f0a051a

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const v1, 0x7f0a05d9

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_0
    return-void
.end method
