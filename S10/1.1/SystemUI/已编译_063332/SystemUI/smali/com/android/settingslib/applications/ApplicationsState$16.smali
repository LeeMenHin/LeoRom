.class Lcom/android/settingslib/applications/ApplicationsState$16;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/applications/AppUtils;->hasAppDefaults(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
