.class public Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;
.super Landroid/widget/FrameLayout;
.source "GestureHintView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

.field private mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

.field private mKeyArea:I

.field private mKeyWidth:I

.field private mSideMargin:I

.field private mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;III)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyWidth:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    return-void
.end method


# virtual methods
.method public getKeyArea()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    return v0
.end method

.method public setDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setDarkIntensity(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setDarkIntensity(F)V

    :cond_1
    return-void
.end method

.method public updateGestureHintLayout(IZZ)Landroid/widget/FrameLayout$LayoutParams;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    const/4 v7, 0x0

    move v8, v3

    :goto_1
    goto :goto_2

    :cond_1
    if-ne v1, v5, :cond_2

    neg-float v7, v3

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-ne v1, v6, :cond_3

    move v7, v3

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move v8, v3

    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setTranslationX(F)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setTranslationY(F)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x2

    if-nez p3, :cond_5

    if-eqz v1, :cond_5

    if-ne v1, v11, :cond_4

    goto :goto_3

    :cond_4
    float-to-int v12, v2

    goto :goto_4

    :cond_5
    :goto_3
    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyWidth:I

    :goto_4
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-nez p3, :cond_7

    if-eqz v1, :cond_7

    if-ne v1, v11, :cond_6

    goto :goto_5

    :cond_6
    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyWidth:I

    goto :goto_6

    :cond_7
    :goto_5
    float-to-int v12, v2

    :goto_6
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v12, 0x53

    const/16 v13, 0x55

    if-nez p3, :cond_e

    if-eqz v1, :cond_e

    if-ne v1, v11, :cond_8

    goto :goto_7

    :cond_8
    if-ne v1, v6, :cond_b

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v14, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    if-ne v12, v14, :cond_9

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    :cond_9
    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v13, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    if-ne v12, v13, :cond_a

    const/16 v12, 0x35

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_a
    const/16 v12, 0x15

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_8

    :cond_b
    iget v13, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v14, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    if-ne v13, v14, :cond_c

    const/16 v12, 0x33

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_c
    iget v13, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v14, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    if-ne v13, v14, :cond_d

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    :cond_d
    const/16 v12, 0x13

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_8

    :cond_e
    :goto_7
    iget v14, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    if-ne v14, v4, :cond_f

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8

    :cond_f
    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mKeyArea:I

    sget v12, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    if-ne v4, v12, :cond_10

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mSideMargin:I

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_8

    :cond_10
    const/16 v4, 0x51

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_8
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getGestureHintDrawable(I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mIconResourceMapper:Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getGestureHintViDrawable(I)Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f0704a9

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    if-nez p3, :cond_13

    if-eqz v1, :cond_13

    if-ne v1, v11, :cond_11

    goto :goto_9

    :cond_11
    if-eq v1, v5, :cond_12

    if-ne v1, v6, :cond_14

    :cond_12
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v15, v5

    move/from16 v17, v4

    move/from16 v19, v4

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x1

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x0

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x1

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    goto :goto_a

    :cond_13
    :goto_9
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    move/from16 v18, v4

    move/from16 v20, v4

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x1

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x0

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    const/16 v16, 0x1

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;->setLayerInset(IIIII)V

    :cond_14
    :goto_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mHintDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_15

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->setDarkIntensity(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_16

    new-instance v6, Landroid/view/View;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_16
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_c
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureHintView;->mViDrawable:Lcom/android/systemui/statusbar/phone/icon/GestureHintDrawable;

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleY(F)V

    return-object v9
.end method
