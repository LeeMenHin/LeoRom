.class Lcom/android/internal/policy/MultiWindowDecorSupport$4$1;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiWindowDecorSupport$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiWindowDecorSupport$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiWindowDecorSupport$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$4$1;->this$1:Lcom/android/internal/policy/MultiWindowDecorSupport$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$4$1;->this$1:Lcom/android/internal/policy/MultiWindowDecorSupport$4;

    iget-object v0, v0, Lcom/android/internal/policy/MultiWindowDecorSupport$4;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$300(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V

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
