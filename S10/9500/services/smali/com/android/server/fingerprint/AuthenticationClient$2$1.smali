.class Lcom/android/server/fingerprint/AuthenticationClient$2$1;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/AuthenticationClient$2;->lambda$onDialogDismissed$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/AuthenticationClient$2;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2$1;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2$1;->this$1:Lcom/android/server/fingerprint/AuthenticationClient$2;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    return-void
.end method
