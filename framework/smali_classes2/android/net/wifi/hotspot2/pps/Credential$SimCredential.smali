.class public final Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCredential"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_IMSI_LENGTH:I = 0xf


# instance fields
.field private mEapType:I

.field private mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    :cond_0
    return-void
.end method

.method private verifyImsi()Z
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Credential"

    const-string v2, "Missing IMSI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI exceeding maximum length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    return v4

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_5

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_5

    return v4

    :cond_5
    return v1
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
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEapType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEapType(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "****\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 4

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->verifyImsi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    const-string v0, "Credential"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Type for SIM credential: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
