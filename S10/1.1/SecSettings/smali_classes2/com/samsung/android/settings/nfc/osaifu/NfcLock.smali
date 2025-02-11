.class public Lcom/samsung/android/settings/nfc/osaifu/NfcLock;
.super Landroid/app/Fragment;
.source "NfcLock.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field private final MNO:Ljava/lang/String;

.field private activity:Lcom/android/settings/SettingsActivity;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    const/16 v2, 0x100

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f120f75

    const/4 v4, 0x0

    const v5, 0x7f120f76

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v6, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v7, "KDI"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v7, "KDR"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->activity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    const-string v0, "[NfcLock]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    const/16 v0, 0x251e

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0206

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0557

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.felicalock"

    const-string v2, "com.samsung.felicalock.FeliCaLockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
