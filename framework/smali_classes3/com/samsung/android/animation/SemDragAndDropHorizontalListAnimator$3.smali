.class Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;
.super Ljava/lang/Object;
.source "SemDragAndDropHorizontalListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method
