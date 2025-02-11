.class public Landroid/telephony/DataSpecificRegistrationStates;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataSpecificRegistrationStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cid:I

.field public final lac:I

.field public final maxDataCalls:I

.field public final mobileOptionalRat:I

.field public final mobileRat:I

.field public final mobileState:I

.field public final snapshotStatus:I

.field public final tac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/DataSpecificRegistrationStates$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationStates$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    return-void
.end method

.method constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    iput p3, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    iput p4, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    iput p1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    iput p5, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    iput p6, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    iput p7, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    iput p8, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationStates$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/DataSpecificRegistrationStates;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/DataSpecificRegistrationStates;

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    iget v4, v2, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpecificRegistrationStates { mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSnapshotStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMobileState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMobileRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMobileOptionalRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->maxDataCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->lac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->tac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->snapshotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationStates;->mobileOptionalRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
