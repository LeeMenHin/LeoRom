.class public Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatSlow.java"


# instance fields
.field private mFormatPrivate:Z

.field private mFromFactoryReset:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_factory_reset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFromFactoryReset:Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFromFactoryReset:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finish()V

    return-void

    :cond_1
    const v1, 0x7f0d0361

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "format_private"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    const v1, 0x7f1219d7

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setHeaderText(I[Ljava/lang/CharSequence;)V

    const v1, 0x7f1219d4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBodyText(I[Ljava/lang/CharSequence;)V

    const v1, 0x7f1219d6

    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    const v1, 0x7f1219d5

    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "format_slow"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->onNavigateNext(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x583

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x582

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x581

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "format_forget_uuid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "private"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    goto :goto_1

    :cond_3
    nop

    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFromFactoryReset:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finish()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    return-void
.end method
