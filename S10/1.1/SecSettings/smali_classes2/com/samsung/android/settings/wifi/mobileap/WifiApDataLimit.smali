.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
.super Landroid/support/v7/preference/Preference;
.source "WifiApDataLimit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final GB:Ljava/math/BigDecimal;

.field private final KB:Ljava/math/BigDecimal;

.field private final MB:Ljava/math/BigDecimal;

.field private apDataSummary:Landroid/widget/TextView;

.field private final mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSummary:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->KB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->GB:Ljava/math/BigDecimal;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    const-string v0, "WifiApDataLimit"

    const-string v1, "create WifiApDataLimit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->updateApMobileDataLimit()V

    const v0, 0x7f0d023b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->GB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->KB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method private isMobileApON()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiApDataLimit"

    const-string v2, "Wifi Manager is null so returning false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method


# virtual methods
.method public declared-synchronized getApDataLimitSummary()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiApDataLimit"

    const-string v1, "getApDataLimitSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->updateUsageValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isMobileApON()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f121d1a

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f121d69    # 1.9422E38f

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f121d19

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121ca2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiApDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApDataLimitValue()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_mobile_data_limit_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v1, "WifiApDataLimit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApDataLimitValue limit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isApDataLimited()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "WifiApDataLimit"

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0932

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->getApDataLimitSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getInputLimitData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->setLimitValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "feature"

    const-string v4, "MHDL"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->setMobileDataUnLimited()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->notifyHierarchyChanged()V

    return-void
.end method

.method public showDialog()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateApDataLimitSummary()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiApDataLimit"

    const-string v1, "updateApDataLimitSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->notifyChanged()V

    return-void
.end method
