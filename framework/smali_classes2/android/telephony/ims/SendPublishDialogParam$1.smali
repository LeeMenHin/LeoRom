.class Landroid/telephony/ims/SendPublishDialogParam$1;
.super Ljava/lang/Object;
.source "SendPublishDialogParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SendPublishDialogParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/SendPublishDialogParam;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SendPublishDialogParam;
    .locals 2

    new-instance v0, Landroid/telephony/ims/SendPublishDialogParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/SendPublishDialogParam;-><init>(Landroid/os/Parcel;Landroid/telephony/ims/SendPublishDialogParam$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/SendPublishDialogParam$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SendPublishDialogParam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ims/SendPublishDialogParam;
    .locals 1

    new-array v0, p1, [Landroid/telephony/ims/SendPublishDialogParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/SendPublishDialogParam$1;->newArray(I)[Landroid/telephony/ims/SendPublishDialogParam;

    move-result-object p1

    return-object p1
.end method
