.class Lcom/altamirasoft/path_animation/PathLineAnimationView$1;
.super Ljava/lang/Object;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-boolean v1, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string/jumbo v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v0, :cond_1

    nop

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
