.class Landroid/hardware/display/SemDeviceInfo$1;
.super Ljava/lang/Object;
.source "SemDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0, p1}, Landroid/hardware/display/SemDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    new-array v0, p1, [Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDeviceInfo$1;->newArray(I)[Landroid/hardware/display/SemDeviceInfo;

    move-result-object p1

    return-object p1
.end method
