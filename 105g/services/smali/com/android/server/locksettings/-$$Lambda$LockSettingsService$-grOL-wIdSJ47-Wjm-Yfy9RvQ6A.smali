.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-grOL-wIdSJ47-Wjm-Yfy9RvQ6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-grOL-wIdSJ47-Wjm-Yfy9RvQ6A;->f$0:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-grOL-wIdSJ47-Wjm-Yfy9RvQ6A;->f$0:Landroid/content/pm/UserInfo;

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$unlockUser$0(Landroid/content/pm/UserInfo;Lcom/android/server/SdpManagerService;)V

    return-void
.end method
