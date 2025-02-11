.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field private mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mCallFromHeadset:Z

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressItem:Landroid/view/MenuItem;

.field private mScan:Landroid/view/MenuItem;

.field private mScreenId:Ljava/lang/String;

.field private mStartScanOnResume:Z

.field private mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    return-void
.end method

.method private addVisibleGuidePreferenceGroup()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0d021c

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDevicePickedIntent :: device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DeviceName"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MacAddress"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addPreferencesForActivity()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v3, :cond_0

    const v3, 0x7f12040f

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f1206eb

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatActivity;->setTitle(I)V

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addVisibleGuidePreferenceGroup()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    :goto_1
    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    iput v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    goto :goto_2

    :cond_3
    const-string v3, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v5, 0x7f1203d6

    iget v6, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 v5, 0x6a

    const/16 v6, 0x69

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-eq v3, v8, :cond_5

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v3, v7, :cond_5

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_4

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    :goto_4
    const-string v3, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string v3, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120400

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void

    :cond_6
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v1, :cond_7

    iget v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v4, v8, :cond_7

    iget v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v4, v7, :cond_7

    iget v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v4, v6, :cond_7

    iget v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v4, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120401

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void

    :cond_7
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged :: bluetoothState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f1212b8

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a060b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const v1, 0x7f0d0141

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f121786

    goto :goto_0

    :cond_0
    const v2, 0x7f1203fc

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBondStateChanged :: device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bondState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCallFromHeadset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 5

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDevicePreferenceClick :: mSelectedDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCallFromHeadset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f1212af

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12086d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const v1, 0x7f12089d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    const/16 v2, 0x200

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "Personal Device"

    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    const/16 v4, 0xc

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_4

    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v3, :cond_6

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :goto_4
    return-void
.end method

.method protected onFinishListAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v2, 0x7f12089e

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    const v0, 0x7f1206b3

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Button"

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanFinishAction:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: Start scanning"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startScanning()Z

    const v0, 0x7f1206b2

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v3, 0x7f12089f

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged :: profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_3

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    const-string v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const v1, 0x7f121786

    goto :goto_0

    :cond_0
    const v1, 0x7f1203fc

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_2

    const-string v0, "DevicePickerFragment"

    const-string v1, "mAvailableDevicesCategory is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    nop

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    iput-boolean v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->removeSelectedGroupDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const v2, 0x7f1203fc

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v0, v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method protected onStopScanningState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    const-string v0, "DevicePickerFragment"

    const-string v1, "mAvailableDevicesCategory is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method public startScanning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result v0

    return v0
.end method
