.class Lcom/samsung/android/settings/fmm/SimChangeAlert$7;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$302(Lcom/samsung/android/settings/fmm/SimChangeAlert;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$300(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$400(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f121a66

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$502(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->access$500(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method
