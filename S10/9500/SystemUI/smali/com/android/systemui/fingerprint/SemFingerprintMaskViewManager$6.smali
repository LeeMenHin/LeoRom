.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$6;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showHelpMessageOnAod(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$6;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$6;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    return-void
.end method
