.class public Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatus"
.end annotation


# static fields
.field private static final CONNECT_CHOICE_EXISTS:I = 0x1

.field private static final CONNECT_CHOICE_NOT_EXISTS:I = -0x1

.field public static final DISABLED_ASSOCIATION_REJECTION:I = 0x2

.field public static final DISABLED_AUTHENTICATION_FAILURE:I = 0x3

.field public static final DISABLED_AUTHENTICATION_NO_CREDENTIALS:I = 0x9

.field public static final DISABLED_BAD_LINK:I = 0x1

.field public static final DISABLED_BY_MDM:I = 0x11

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0xb

.field public static final DISABLED_BY_WRONG_PASSWORD:I = 0xd

.field public static final DISABLED_CAPTIVE_PORTAL:I = 0xe

.field public static final DISABLED_DHCP_FAILURE:I = 0x4

.field public static final DISABLED_DNS_FAILURE:I = 0x5

.field public static final DISABLED_DUE_TO_USER_SWITCH:I = 0xc

.field public static final DISABLED_NO_INTERNET_PERMANENT:I = 0xa

.field public static final DISABLED_NO_INTERNET_TEMPORARY:I = 0x6

.field public static final DISABLED_NO_INTERNET_WCM:I = 0x10

.field public static final DISABLED_POOR_LINK:I = 0xf

.field public static final DISABLED_TLS_VERSION_MISMATCH:I = 0x8

.field public static final DISABLED_UNSTABLE_AP:I = 0x12

.field public static final DISABLED_WPS_START:I = 0x7

.field public static final INVALID_NETWORK_SELECTION_DISABLE_TIMESTAMP:J = -0x1L

.field public static final NETWORK_SELECTION_DISABLED_MAX:I = 0x13

.field public static final NETWORK_SELECTION_DISABLED_STARTING_INDEX:I = 0x1

.field public static final NETWORK_SELECTION_ENABLE:I = 0x0

.field public static final NETWORK_SELECTION_ENABLED:I = 0x0

.field public static final NETWORK_SELECTION_PERMANENTLY_DISABLED:I = 0x2

.field public static final NETWORK_SELECTION_STATUS_MAX:I = 0x3

.field public static final NETWORK_SELECTION_TEMPORARY_DISABLED:I = 0x1

.field public static final QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

.field public static final QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;


# instance fields
.field private mCandidate:Landroid/net/wifi/ScanResult;

.field private mCandidateScore:I

.field private mConnectChoice:Ljava/lang/String;

.field private mConnectChoiceTimestamp:J

.field private mHasEverConnected:Z

.field private mNetworkSeclectionDisableCounter:[I

.field private mNetworkSelectionBSSID:Ljava/lang/String;

.field private mNetworkSelectionDisableReason:I

.field private mNotRecommended:Z

.field private mSeenInLastQualifiedNetworkSelection:Z

.field private mStatus:I

.field private mTemporarilyDisabledTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "NETWORK_SELECTION_ENABLED"

    const-string v1, "NETWORK_SELECTION_TEMPORARY_DISABLED"

    const-string v2, "NETWORK_SELECTION_PERMANENTLY_DISABLED"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    const-string v1, "NETWORK_SELECTION_ENABLE"

    const-string v2, "NETWORK_SELECTION_DISABLED_BAD_LINK"

    const-string v3, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION "

    const-string v4, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    const-string v5, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    const-string v6, "NETWORK_SELECTION_DISABLED_DNS_FAILURE"

    const-string v7, "NETWORK_SELECTION_DISABLED_NO_INTERNET_TEMPORARY"

    const-string v8, "NETWORK_SELECTION_DISABLED_WPS_START"

    const-string v9, "NETWORK_SELECTION_DISABLED_TLS_VERSION"

    const-string v10, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS"

    const-string v11, "NETWORK_SELECTION_DISABLED_NO_INTERNET_PERMANENT"

    const-string v12, "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER"

    const-string v13, "NETWORK_SELECTION_DISABLED_BY_USER_SWITCH"

    const-string v14, "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"

    const-string v15, "NETWORK_SELECTION_DISABLED_CAPTIVE_PORTAL"

    const-string v16, "NETWORK_SELECTION_DISABLED_POOR_LINK"

    const-string v17, "NETWORK_SELECTION_DISABLED_NO_INTERNET_WCM"

    const-string v18, "NETWORK_SELECTION_DISABLED_BY_MDM"

    const-string v19, "NETWORK_SELECTION_DISABLED_UNSTABLE_AP"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    const/16 v2, 0x13

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return-void
.end method

.method public static getNetworkDisableReasonString(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearDisableReasonCounter()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public clearDisableReasonCounter(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 3

    iget v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNotRecommended(Z)V

    return-void
.end method

.method public getCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getCandidateScore()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    return v0
.end method

.method public getConnectChoice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectChoiceTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    return-wide v0
.end method

.method public getDisableReasonCounter(I)I
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v0, v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisableTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-wide v0
.end method

.method public getHasEverConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return v0
.end method

.method public getNetworkDisableReasonString()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNetworkSelectionBSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionDisableReason()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return v0
.end method

.method public getNetworkSelectionStatus()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    return v0
.end method

.method public getNetworkStatusString()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSeenInLastQualifiedNetworkSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    return v0
.end method

.method public incrementDisableReasonCounter(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDisabledByReason(I)Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkEnabled()Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkPermanentlyDisabled()Z
    .locals 2

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkTemporaryDisabled()Z
    .locals 2

    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNotRecommended()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNotRecommended:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableReasonCounter(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNotRecommended(Z)V

    return-void
.end method

.method public setCandidate(Landroid/net/wifi/ScanResult;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public setCandidateScore(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    return-void
.end method

.method public setConnectChoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-void
.end method

.method public setConnectChoiceTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    return-void
.end method

.method public setDisableReasonCounter(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput p2, v0, p1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisableTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-void
.end method

.method public setHasEverConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return-void
.end method

.method public setNetworkSelectionBSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-void
.end method

.method public setNetworkSelectionDisableReason(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkSelectionStatus(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    :cond_0
    return-void
.end method

.method public setNotRecommended(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNotRecommended:Z

    return-void
.end method

.method public setSeenInLastQualifiedNetworkSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
