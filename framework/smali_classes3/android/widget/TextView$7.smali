.class Landroid/widget/TextView$7;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field final synthetic val$inputDevice:Landroid/view/InputDevice;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/InputDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$7;->this$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x4e2a

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    iget-object v1, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    invoke-virtual {v1, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_0
    return-void
.end method
