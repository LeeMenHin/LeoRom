.class public final synthetic Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$1$h9Yxw_JKfsuyYWHVOMgH1oQETB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/lockstar/PluginLockStarManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$1$h9Yxw_JKfsuyYWHVOMgH1oQETB0;->f$0:Lcom/android/systemui/lockstar/PluginLockStarManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$1$h9Yxw_JKfsuyYWHVOMgH1oQETB0;->f$0:Lcom/android/systemui/lockstar/PluginLockStarManager$1;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->lambda$onUserSwitchComplete$0(Lcom/android/systemui/lockstar/PluginLockStarManager$1;)V

    return-void
.end method
