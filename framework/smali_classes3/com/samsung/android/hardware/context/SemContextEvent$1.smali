.class Lcom/samsung/android/hardware/context/SemContextEvent$1;
.super Ljava/lang/Object;
.source "SemContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/hardware/context/SemContextEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextEvent;
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/hardware/context/SemContextEvent;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/hardware/context/SemContextEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent$1;->newArray(I)[Lcom/samsung/android/hardware/context/SemContextEvent;

    move-result-object p1

    return-object p1
.end method
