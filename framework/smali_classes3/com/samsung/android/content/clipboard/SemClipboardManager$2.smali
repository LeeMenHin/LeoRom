.class Lcom/samsung/android/content/clipboard/SemClipboardManager$2;
.super Landroid/os/Handler;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x103012b

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x10401c3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_1
    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401c4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040a7a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string v1, "SemClipboardManager"

    const-string v2, "Fail set data "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$300(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401c2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1, v3}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$302(Lcom/samsung/android/content/clipboard/SemClipboardManager;Z)Z

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$200(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401c1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    const-string v1, "SemClipboardManager"

    const-string/jumbo v2, "success set data "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
