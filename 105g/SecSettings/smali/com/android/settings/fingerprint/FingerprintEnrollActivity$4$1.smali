.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->onEnrollmentProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    :cond_0
    return-void
.end method
