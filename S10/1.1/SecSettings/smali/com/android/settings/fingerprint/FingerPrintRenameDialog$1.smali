.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;
.super Ljava/lang/Object;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method
