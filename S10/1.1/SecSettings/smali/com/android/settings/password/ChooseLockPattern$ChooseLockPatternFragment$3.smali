.class Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
