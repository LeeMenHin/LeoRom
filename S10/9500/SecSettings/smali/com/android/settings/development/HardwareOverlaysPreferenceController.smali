.class public Lcom/android/settings/development/HardwareOverlaysPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "HardwareOverlaysPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SURFACE_FLINGER_READ_CODE:I = 0x3f2


# instance fields
.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "disable_overlays"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method updateHardwareOverlaysSetting()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    invoke-virtual {v8, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    return-void
.end method

.method writeHardwareOverlaysSetting(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    return-void
.end method
