.class Lcom/android/settings/backup/ToggleBackupSettingFragment$1;
.super Ljava/lang/Object;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/ToggleBackupSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->access$000(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {v1, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->access$100(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V

    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    iget-object v1, v1, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return v0
.end method
