.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$pWVXPprzmTKC9A3nui35xs7h_34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$pWVXPprzmTKC9A3nui35xs7h_34;->f$0:Lcom/android/server/fingerprint/AuthenticationClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$pWVXPprzmTKC9A3nui35xs7h_34;->f$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->lambda$handleSystemUIEventForInDisplaySensor$7(Lcom/android/server/fingerprint/AuthenticationClient;)V

    return-void
.end method
