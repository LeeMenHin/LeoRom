.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v1, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v2, v2, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v4, v4, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v1, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
