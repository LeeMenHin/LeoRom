.class Lcom/samsung/android/widget/SemIndexScrollView$1;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->access$600(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->access$600(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->access$1100(Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;)V

    :cond_0
    return-void
.end method
