.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v1, 0x7f1209e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    const-string v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemovalCallback onRemovalSucceeded : fingerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->access$2200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;I)V

    return-void
.end method
