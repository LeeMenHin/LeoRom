.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyParticleView;FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

.field final synthetic val$targetView:Lcom/android/systemui/infinity/preview/GalaxyParticleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Lcom/android/systemui/infinity/preview/GalaxyParticleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    iput-object p2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;->val$targetView:Lcom/android/systemui/infinity/preview/GalaxyParticleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v1, v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->access$602(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;F)F

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;->val$targetView:Lcom/android/systemui/infinity/preview/GalaxyParticleView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->setCurrentMoveX(F)V

    return-void
.end method
