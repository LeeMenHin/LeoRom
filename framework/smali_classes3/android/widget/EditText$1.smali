.class Landroid/widget/EditText$1;
.super Landroid/os/Handler;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Landroid/widget/EditText;->access$000()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/widget/EditText;->access$100(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-static {v0, v1}, Landroid/widget/EditText;->access$202(Landroid/widget/EditText;Z)Z

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/widget/EditText;->access$100(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/EditText;->access$202(Landroid/widget/EditText;Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/EditText$1;->this$0:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/widget/EditText;->access$300(Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method
