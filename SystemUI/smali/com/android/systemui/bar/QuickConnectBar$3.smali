.class Lcom/android/systemui/bar/QuickConnectBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/QuickConnectBar;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/QuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/QuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QuickConnectBar$3;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$3;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/bar/QuickConnectBar;->access$102(Lcom/android/systemui/bar/QuickConnectBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
