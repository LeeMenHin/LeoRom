.class final Lcom/tencent/bugly/yaq/proguard/y$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/yaq/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/bugly/yaq/proguard/y$a;

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/bugly/yaq/proguard/y$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y;->a(Lcom/tencent/bugly/yaq/proguard/y$a;)Lcom/tencent/bugly/yaq/proguard/y$a;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/yaq/proguard/y$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y;->b(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y$a;->a(Lcom/tencent/bugly/yaq/proguard/y$a;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y$a;->a(Lcom/tencent/bugly/yaq/proguard/y$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y$a;->b(Lcom/tencent/bugly/yaq/proguard/y$a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/y;->c()Lcom/tencent/bugly/yaq/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y$a;->c(Lcom/tencent/bugly/yaq/proguard/y$a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
