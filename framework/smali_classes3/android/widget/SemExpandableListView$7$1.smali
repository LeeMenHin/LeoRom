.class Landroid/widget/SemExpandableListView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemExpandableListView$7;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView$7;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Landroid/widget/SemExpandableListView;->access$2200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expand animation finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->access$4800(Landroid/widget/SemExpandableListView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListView$7$1;->this$1:Landroid/widget/SemExpandableListView$7;

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->access$4202(Landroid/widget/SemExpandableListView;I)I

    return-void
.end method
