.class public Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/yaq/crashreport/a;


# static fields
.field private static a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

.field private static l:Z

.field private static m:Z

.field private static o:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/yaq/proguard/w;

.field private e:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;

.field private f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private n:Lcom/tencent/bugly/yaq/crashreport/crash/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->m:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/yaq/crashreport/common/info/a;Lcom/tencent/bugly/yaq/crashreport/crash/b;Lcom/tencent/bugly/yaq/proguard/w;ZLjava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->k:Z

    invoke-static {p1}, Lcom/tencent/bugly/yaq/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    :try_start_0
    invoke-static {p6}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->n:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    iput-object p6, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iput-object p4, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/yaq/proguard/w;

    iput-boolean p5, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->g:Z

    new-instance v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/a;

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/yaq/crashreport/common/info/a;Lcom/tencent/bugly/yaq/crashreport/crash/b;Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;)V

    iput-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;

    return-void

    :cond_0
    :try_start_1
    const-string v0, "bugly"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_bugly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized a(Z)V
    .locals 9

    const/4 v6, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "[Native] Native crash report has already registered."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v0, "[Native] Native Crash Report enable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[Native] Check extra jni for Bugly NDK v%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "2.1.1"

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "2.3.0"

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "."

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->m:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    :try_start_4
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-eqz v0, :cond_6

    const-string v0, "[Native] Info setting jni can be accessed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_7

    const-string v0, "[Native] Extra jni can be accessed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iput-object v2, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->n:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v0, "[Native] Failed to load Bugly SO file."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "[Native] Info setting jni can not be accessed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v0, "[Native] Extra jni can not be accessed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_8
    :try_start_7
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_4

    :try_start_8
    const-string v2, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v3, "registNativeExceptionHandler2"

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v0, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v0, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/tencent/bugly/yaq/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    if-eqz p1, :cond_b

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "registNativeExceptionHandler"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/tencent/bugly/yaq/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->b()Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->K()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->b()Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    move-result-object v2

    iput-object v0, v2, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->n:Ljava/lang/String;

    const-string v2, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v3, "checkExtraJni"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/y;->a(Z)V

    :cond_a
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "enableHandler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_c

    move v0, v1

    :goto_7
    const-string v1, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "setLogMode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_b
    const/4 v0, 0x5

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x5

    goto :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->m:Z

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3e7

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v1, "[Native] Trying to load so: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v1, "[Native] Successfully loaded SO: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    :cond_0
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move v1, v3

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "[Native] Failed to load so: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const-string v0, "[Native] Native crash report has already unregistered."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->unregist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "[Native] Successfully closed native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "[Native] Failed to close native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "enableHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    const-string v0, "[Native] Successfully closed native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v0, "[Native] Failed to close native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq v0, p1, :cond_0

    const-string v0, "user change native %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/yaq/crashreport/crash/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->n:Lcom/tencent/bugly/yaq/crashreport/crash/b;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;
    .locals 2

    const-class v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/tencent/bugly/yaq/crashreport/common/info/a;Lcom/tencent/bugly/yaq/crashreport/crash/b;Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;Lcom/tencent/bugly/yaq/proguard/w;ZLjava/lang/String;)Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;
    .locals 8

    const-class v7, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;-><init>(Landroid/content/Context;Lcom/tencent/bugly/yaq/crashreport/common/info/a;Lcom/tencent/bugly/yaq/crashreport/crash/b;Lcom/tencent/bugly/yaq/proguard/w;ZLjava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static isShouldHandleInJava()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return v0
.end method

.method public static setShouldHandleInJava(Z)V
    .locals 3

    sput-boolean p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->o:Z

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;

    const/16 v1, 0x3e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 14

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/tencent/bugly/yaq/crashreport/crash/c;->g:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/tencent/bugly/yaq/proguard/z;->b()J

    move-result-wide v0

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_0

    array-length v0, v8

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v9, v8

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_1
    if-ge v2, v9, :cond_4

    aget-object v3, v8, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v10, v4

    if-ltz v12, :cond_2

    cmp-long v10, v10, v6

    if-ltz v10, :cond_3

    :cond_2
    const-string v10, "[Native] Delete record file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "[Native] Number of record files overdue: %d, has deleted: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/yaq/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "appendNativeLog"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method public checkUploadRecordCrash()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/yaq/proguard/w;

    new-instance v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler$1;-><init>(Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/yaq/proguard/w;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public filterSigabrtSysLog()Z
    .locals 2

    const/16 v0, 0x3e6

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDumpFilePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogFromNative()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->getNativeLog()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "getNativeLog"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getNativeExceptionHandler()Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method protected native getNativeLog()Ljava/lang/String;
.end method

.method public declared-synchronized isUserOpened()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStrategyChanged(Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v3, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v2, v3, :cond_0

    const-string v2, "server native changed to %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eqz v2, :cond_2

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v1, :cond_1

    const-string v1, "native changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "putNativeKeyValue"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native regist(Ljava/lang/String;ZI)Ljava/lang/String;
.end method

.method public removeEmptyNativeRecordFiles()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized setDumpFilePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNativeAppChannel(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNativeAppPackage(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNativeAppVersion(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected native setNativeInfo(ILjava/lang/String;)V
.end method

.method public setNativeIsAppForeground(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setNativeLaunchTime(J)Z
    .locals 3

    const/16 v0, 0xf

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNativeUserId(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setUserOpened(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c(Z)V

    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->isUserOpened()Z

    move-result v2

    invoke-static {}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/tencent/bugly/yaq/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/yaq/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v2, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v1, :cond_0

    const-string v1, "native changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/yaq/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized startNativeMonitor()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "Bugly"

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/yaq/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->m:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "yaq"

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "yaq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-static {v0, v2}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_1

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(Z)V

    sget-boolean v0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeIsAppForeground(Z)Z

    iget-object v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/yaq/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/tencent/bugly/yaq/crashreport/common/info/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->setNativeLaunchTime(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method protected native testCrash()V
.end method

.method public testNativeCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    const-string v0, "[Native] Bugly SO file has not been load."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/yaq/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->testCrash()V

    goto :goto_0
.end method

.method public testNativeCrash(ZZZ)V
    .locals 2

    const/16 v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    const/16 v0, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    const/16 v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/tencent/bugly/yaq/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V

    return-void
.end method

.method protected native unregist()Ljava/lang/String;
.end method
