.class public Landroid/net/wifi/WifiScanner$ScanSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band:I

.field public channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

.field public isPnoScan:Z

.field public maxPeriodInMs:I

.field public maxScansToCache:I

.field public numBssidsPerScan:I

.field public periodInMs:I

.field public reportEvents:I

.field public semPackageName:Ljava/lang/String;

.field public stepCount:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->semPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
