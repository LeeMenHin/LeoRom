.class Lcom/android/settings/accounts/AccountDetailDashboardFragment$1;
.super Ljava/lang/Object;
.source "AccountDetailDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountDetailDashboardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountDetailDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountDetailDashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment$1;->this$0:Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment$1;->this$0:Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->updatePreference()V

    return-void
.end method
