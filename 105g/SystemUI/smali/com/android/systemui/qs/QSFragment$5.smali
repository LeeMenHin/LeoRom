.class Lcom/android/systemui/qs/QSFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$5;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$5;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSFragment;->access$202(Lcom/android/systemui/qs/QSFragment;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$5;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$300(Lcom/android/systemui/qs/QSFragment;)V

    return-void
.end method
