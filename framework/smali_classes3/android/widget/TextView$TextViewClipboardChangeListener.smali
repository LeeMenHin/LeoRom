.class public Landroid/widget/TextView$TextViewClipboardChangeListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Lcom/samsung/android/content/clipboard/SemClipboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextViewClipboardChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$4400(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSemClipboardManager()Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardChangeListener;->this$0:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    :goto_0
    return-void
.end method

.method public onFilterUpdated(I)V
    .locals 0

    return-void
.end method
