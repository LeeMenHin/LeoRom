.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGuestDialog"
.end annotation


# instance fields
.field private final mGuestId:I

.field private final mTargetId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f12044d

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setTitle(I)V

    const p1, 0x7f12044b

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setMessage(Ljava/lang/CharSequence;)V

    nop

    const/high16 p1, 0x1040000

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    nop

    const p1, 0x7f12044c

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setCanceledOnTouchOutside(Z)V

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->exitGuest(II)V

    :goto_0
    return-void
.end method
