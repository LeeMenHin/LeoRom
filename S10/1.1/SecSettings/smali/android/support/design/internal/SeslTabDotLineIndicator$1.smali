.class Landroid/support/design/internal/SeslTabDotLineIndicator$1;
.super Ljava/lang/Object;
.source "SeslTabDotLineIndicator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/SeslTabDotLineIndicator;->onPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/SeslTabDotLineIndicator;


# direct methods
.method constructor <init>(Landroid/support/design/internal/SeslTabDotLineIndicator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator$1;->this$0:Landroid/support/design/internal/SeslTabDotLineIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator$1;->this$0:Landroid/support/design/internal/SeslTabDotLineIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/internal/SeslTabDotLineIndicator;->access$002(Landroid/support/design/internal/SeslTabDotLineIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
