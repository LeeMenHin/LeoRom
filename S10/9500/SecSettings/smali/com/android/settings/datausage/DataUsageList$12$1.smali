.class Lcom/android/settings/datausage/DataUsageList$12$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataUsageList$12;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList$12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$12$1;->this$1:Lcom/android/settings/datausage/DataUsageList$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$12$1;->this$1:Lcom/android/settings/datausage/DataUsageList$12;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList$12;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageList;->access$1900(Lcom/android/settings/datausage/DataUsageList;I)V

    return-void
.end method
