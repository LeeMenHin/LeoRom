.class Lcom/samsung/android/knox/net/billing/EnterpriseApn$1;
.super Ljava/lang/Object;
.source "EnterpriseApn.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/billing/EnterpriseApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/knox/net/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/billing/EnterpriseApn$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/billing/EnterpriseApn$1;->newArray(I)[Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    move-result-object p1

    return-object p1
.end method
