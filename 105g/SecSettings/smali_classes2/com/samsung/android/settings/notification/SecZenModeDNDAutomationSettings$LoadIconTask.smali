.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "SecZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
