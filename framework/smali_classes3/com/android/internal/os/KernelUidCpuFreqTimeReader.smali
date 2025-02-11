.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mAllUidTimesAvailable:Z

.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mCurTimes:[J

.field private mDeltaTimes:[J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mPerClusterTimesAvailable:Z

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private mReadErrorCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method private extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .locals 7

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    aget-wide v5, v5, v2

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, p2, v1

    aget-wide v2, p2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative time from freq time proc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 12

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v1, v2, [J

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-direct {p0, p2, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    iget v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    aget-wide v7, v7, v2

    aget-wide v9, v1, v2

    sub-long/2addr v7, v9

    aput-wide v7, v6, v2

    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v6, v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    sget-object v6, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Negative delta from freq time proc: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v10, v10, v2

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v6, v6, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    iget v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    invoke-static {v2, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {p1, v0, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_5
    return-void
.end method

.method private readImpl(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/IntBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse freq time proc bytes to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    iget v4, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cpu freqs expect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v4, v5

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freq time format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    div-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public allUidTimesAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    return v0
.end method

.method public getAllUidCpuFreqTimeMs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public perClusterTimesAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    return v0
.end method

.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$s7iJKg0yjXXtqM4hsU8GS_gavIY;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$s7iJKg0yjXXtqM4hsU8GS_gavIY;-><init>(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$_LfRKir9FA4B4VL15YGHagRZaR8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$_LfRKir9FA4B4VL15YGHagRZaR8;-><init>(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    check-cast p1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    return-void
.end method

.method public readFreqs(Lcom/android/internal/os/PowerProfile;)[J
    .locals 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/uid_time_in_state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_0
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    :cond_3
    sget-object v3, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method public readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {p2, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    :cond_4
    :goto_2
    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPerClusterTimesAvailable="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v2
.end method

.method public removeUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
