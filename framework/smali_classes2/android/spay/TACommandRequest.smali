.class public Landroid/spay/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    new-instance v0, Landroid/spay/TACommandRequest$1;

    invoke-direct {v0}, Landroid/spay/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor <init>(I[BIII[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput p4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput p5, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput-object p6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v2, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disassemble()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v1, v1

    const/16 v2, 0xb9c

    if-gt v1, v2, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TACommandRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to divide the mRequest, len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    sget-boolean v1, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "TACommandRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dividing the mRequest, len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v2, v1, 0xb9c

    iget v3, p0, Landroid/spay/TACommandRequest;->mLength:I

    if-ge v2, v3, :cond_5

    sget-boolean v2, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "TACommandRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generating the chunk from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v4, v1, 0xb9c

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Landroid/spay/TACommandRequest;

    iget v3, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v4, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v6, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    add-int/lit16 v7, v1, 0xb9c

    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v1, v1, 0xb9c

    goto :goto_0

    :cond_5
    new-instance v9, Landroid/spay/TACommandRequest;

    iget v3, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v4, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v6, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iget v7, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "TACommandRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generating the chunk from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method public dump()V
    .locals 6

    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const-string v3, "0x%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TACommandRequest"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/mnt/sdcard/sendbuf.txt"

    invoke-direct {v4, v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    nop

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :goto_3
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    nop

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_7

    :catch_3
    move-exception v4

    goto :goto_8

    :catch_4
    move-exception v4

    goto :goto_9

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :goto_8
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :goto_9
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_a
    throw v1
.end method

.method public getChunkOffset()I
    .locals 1

    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    return v0
.end method

.method public init(I[BI[B)V
    .locals 2

    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object p4, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    array-length v1, p4

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    :goto_0
    iput v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
