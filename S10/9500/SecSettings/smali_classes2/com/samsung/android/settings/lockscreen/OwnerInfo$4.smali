.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

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

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$302(Lcom/samsung/android/settings/lockscreen/OwnerInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$602(Lcom/samsung/android/settings/lockscreen/OwnerInfo;I)I

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$200(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$200(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x41

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$300(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$300(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$300(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$400(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$400(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    const v7, 0x7f12158c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$500(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;

    move-result-object v2

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$600(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$600(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$400(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_2
    return-void
.end method
