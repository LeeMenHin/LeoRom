.class Lcom/android/settings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f1216c8

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1}, Lcom/android/settings/users/UserSettings;->access$200(Lcom/android/settings/users/UserSettings;IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$100(Lcom/android/settings/users/UserSettings;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$1;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$000(Lcom/android/settings/users/UserSettings;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
