.class Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;
.super Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.source "SemBoxBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemBoxBlurImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadiusAnimationParams"
.end annotation


# instance fields
.field public mEndValue:F

.field public mStartValue:F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemBoxBlurImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemBoxBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBoxBlurImageFilter;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;-><init>(Lcom/samsung/android/graphics/SemImageFilter;JJLandroid/animation/TimeInterpolator;)V

    iput p2, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;->mStartValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;->mEndValue:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams$1;-><init>(Lcom/samsung/android/graphics/SemBoxBlurImageFilter$RadiusAnimationParams;)V

    return-object v0
.end method
