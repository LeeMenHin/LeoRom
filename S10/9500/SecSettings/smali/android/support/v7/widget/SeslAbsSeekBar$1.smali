.class Landroid/support/v7/widget/SeslAbsSeekBar$1;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslAbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslAbsSeekBar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslAbsSeekBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->access$002(Landroid/support/v7/widget/SeslAbsSeekBar;I)I

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-static {v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->access$000(Landroid/support/v7/widget/SeslAbsSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->onSlidingRefresh(I)V

    return-void
.end method
