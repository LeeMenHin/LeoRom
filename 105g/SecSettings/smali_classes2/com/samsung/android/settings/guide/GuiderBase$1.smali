.class Lcom/samsung/android/settings/guide/GuiderBase$1;
.super Ljava/lang/Object;
.source "GuiderBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/GuiderBase;->showCompleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/GuiderBase;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/GuiderBase;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/GuiderBase$1;->this$0:Lcom/samsung/android/settings/guide/GuiderBase;

    iput-object p2, p0, Lcom/samsung/android/settings/guide/GuiderBase$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "settings:guide_completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuiderBase$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/guide/GuiderBase$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
