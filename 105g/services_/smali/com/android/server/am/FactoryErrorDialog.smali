.class final Lcom/android/server/am/FactoryErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "FactoryErrorDialog.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/am/FactoryErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FactoryErrorDialog$1;-><init>(Lcom/android/server/am/FactoryErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FactoryErrorDialog;->setCancelable(Z)V

    const v1, 0x104034d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/FactoryErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/FactoryErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    nop

    const v1, 0x1040350

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/am/FactoryErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Factory Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method
