.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private mApp:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->onNavigateNext(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "StorageSettings"

    const-string v1, "Failed to confirm credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d035d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080195

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setIcon(I)V

    const v3, 0x7f121994    # 1.942001E38f

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    const v3, 0x7f121993    # 1.9420008E38f

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    const/4 v4, 0x2

    aput-object v1, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    const v3, 0x7f120e8e

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 11

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is currently locked; requesting unlock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f121998

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v5, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v5, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onResume()V

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isSDCardMoveAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    :cond_0
    return-void
.end method
