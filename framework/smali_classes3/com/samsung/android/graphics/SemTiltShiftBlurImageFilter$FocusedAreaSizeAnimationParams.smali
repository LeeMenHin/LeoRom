.class Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;
.super Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.source "SemTiltShiftBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusedAreaSizeAnimationParams"
.end annotation


# instance fields
.field public mEndAreaBottomY:F

.field public mEndAreaTopY:F

.field public mStartAreaBottomY:F

.field public mStartAreaTopY:F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;FFFFJJLandroid/animation/TimeInterpolator;)V
    .locals 8

    move-object v7, p0

    move-object v1, p1

    iput-object v1, v7, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    move-object v0, v7

    move-wide v2, p6

    move-wide/from16 v4, p8

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;-><init>(Lcom/samsung/android/graphics/SemImageFilter;JJLandroid/animation/TimeInterpolator;)V

    move v0, p2

    iput v0, v7, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaTopY:F

    move v1, p3

    iput v1, v7, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaBottomY:F

    move v2, p4

    iput v2, v7, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaTopY:F

    move v3, p5

    iput v3, v7, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaBottomY:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;-><init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;)V

    return-object v0
.end method
