.class Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    iget-object v1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
