.class public final synthetic Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/ZygoteInitThreadPool;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

    iput p2, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$1:I

    iput p3, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

    iget v1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$1:I

    iget v2, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$V45jfePbC6M6eGm_CwZj-M0NRK4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/ZygoteInitThreadPool;->lambda$pararrelPreloadTimeout$1(Lcom/android/internal/os/ZygoteInitThreadPool;II)V

    return-void
.end method
