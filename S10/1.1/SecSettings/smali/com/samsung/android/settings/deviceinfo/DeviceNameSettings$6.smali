.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$6;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
