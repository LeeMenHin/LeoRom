.class Landroid/support/v4/widget/SeslEdgeEffect$1;
.super Landroid/os/Handler;
.source "SeslEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SeslEdgeEffect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SeslEdgeEffect;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect$1;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

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
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect$1;->this$0:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
