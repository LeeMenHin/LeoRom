.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$3;

.field private final synthetic f$1:J

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$3;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$0:Landroid/hardware/fingerprint/FingerprintManager$3;

    iput-wide p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$1:J

    iput p4, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$2:I

    iput p5, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$0:Landroid/hardware/fingerprint/FingerprintManager$3;

    iget-wide v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$1:J

    iget v3, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$2:I

    iget v4, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$3$F-jqiY1xNVo3F6TCPdQEEFtCSiY;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager$3;->lambda$onError$3(Landroid/hardware/fingerprint/FingerprintManager$3;JII)V

    return-void
.end method
