.class Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mLastRed:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstRed:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstRed:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v4, 0x4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mLastGreen:F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v5, v5, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstGreen:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, p1

    iget-object v5, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v5, v5, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstGreen:F

    add-float/2addr v1, v5

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v5, 0x5

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mLastBlue:F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v6, v6, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstBlue:F

    sub-float/2addr v1, v6

    mul-float/2addr v1, p1

    iget-object v6, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v6, v6, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstBlue:F

    add-float/2addr v1, v6

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v6, 0x6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mLastAlpha:F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v7, v7, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstAlpha:F

    sub-float/2addr v1, v7

    mul-float/2addr v1, p1

    iget-object v7, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget v7, v7, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->mFirstAlpha:F

    add-float/2addr v1, v7

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v8, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v9, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/4 v12, 0x4

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateColor fraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateColor redColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateColor greenColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateColor blueColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateColor alphaColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientStartColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
