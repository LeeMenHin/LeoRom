.class Lcom/android/settings/datausage/DataUsageList$5;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getItem()Lcom/android/settingslib/AppItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2, v1}, Lcom/android/settings/datausage/DataUsageList;->access$400(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V

    const/4 v2, 0x1

    return v2
.end method
