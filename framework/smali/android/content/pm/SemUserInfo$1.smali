.class Landroid/content/pm/SemUserInfo$1;
.super Ljava/lang/Object;
.source "SemUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SemUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/SemUserInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SemUserInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/SemUserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/SemUserInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/SemUserInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/SemUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SemUserInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/SemUserInfo;
    .locals 1

    new-array v0, p1, [Landroid/content/pm/SemUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/pm/SemUserInfo$1;->newArray(I)[Landroid/content/pm/SemUserInfo;

    move-result-object p1

    return-object p1
.end method
