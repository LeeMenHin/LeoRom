.class Landroid/widget/Editor$HandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Magnifier$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationComplete()V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getWindowCoords()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, v6, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6200(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Magnifier;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v4, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v3, v4, v1}, Landroid/widget/Editor$HandleView;->access$6400(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/widget/Editor$HandleView;->access$6500(Landroid/widget/Editor$HandleView;Z)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->access$6600(Landroid/widget/Editor$HandleView;)Landroid/widget/Editor$HandleView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v3, v2, v1}, Landroid/widget/Editor$HandleView;->access$6400(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/widget/Editor$HandleView;->access$6500(Landroid/widget/Editor$HandleView;Z)V

    :cond_1
    return-void
.end method
