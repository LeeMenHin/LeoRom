.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;
.super Landroid/os/Handler;
.source "FingerprintSettingsMultiSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string v0, "FpstFingerprintSettingsMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$000(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    nop

    :goto_0
    return-void
.end method
