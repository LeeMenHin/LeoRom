.class Landroid/widget/EdgeEffect$1;
.super Landroid/os/Handler;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EdgeEffect;


# direct methods
.method constructor <init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
