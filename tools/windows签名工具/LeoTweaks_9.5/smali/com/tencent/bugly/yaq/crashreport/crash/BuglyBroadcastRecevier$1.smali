.class final Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastRecevier$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/bugly/yaq/crashreport/crash/BuglyBroadcastRecevier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/yaq/crashreport/biz/b;->a:Lcom/tencent/bugly/yaq/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/yaq/crashreport/biz/a;->b()V

    return-void
.end method
