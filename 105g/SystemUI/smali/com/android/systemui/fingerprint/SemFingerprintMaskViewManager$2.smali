.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setBroadcastReceiverForTSP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "info"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$102(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Z)Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->setVisibility(I)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget-object v2, v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    iget-object v2, v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/16 v3, 0x2711

    invoke-interface {v2, v3}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to send event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$102(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Z)Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleTouchEvent(Z)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleTouchEvent(Z)V

    :cond_4
    :goto_1
    return-void
.end method
