.class Lcom/samsung/android/content/clipboard/SemClipboardManager$1;
.super Landroid/os/Handler;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->access$000(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V

    return-void
.end method
