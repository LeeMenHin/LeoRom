.class public final Landroid/util/proto/ProtoOutputStream;
.super Ljava/lang/Object;
.source "ProtoOutputStream.java"


# static fields
.field public static final FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final FIELD_COUNT_SHIFT:I = 0x28

.field public static final FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final FIELD_ID_MASK:I = -0x8

.field public static final FIELD_ID_SHIFT:I = 0x3

.field public static final FIELD_TYPE_BOOL:J = 0x800000000L

.field public static final FIELD_TYPE_BYTES:J = 0xc00000000L

.field public static final FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final FIELD_TYPE_ENUM:J = 0xe00000000L

.field public static final FIELD_TYPE_FIXED32:J = 0x700000000L

.field public static final FIELD_TYPE_FIXED64:J = 0x600000000L

.field public static final FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final FIELD_TYPE_INT32:J = 0x500000000L

.field public static final FIELD_TYPE_INT64:J = 0x300000000L

.field public static final FIELD_TYPE_MASK:J = 0xff00000000L

.field public static final FIELD_TYPE_MESSAGE:J = 0xb00000000L

.field private static final FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final FIELD_TYPE_SFIXED32:J = 0xf00000000L

.field public static final FIELD_TYPE_SFIXED64:J = 0x1000000000L

.field public static final FIELD_TYPE_SHIFT:I = 0x20

.field public static final FIELD_TYPE_SINT32:J = 0x1100000000L

.field public static final FIELD_TYPE_SINT64:J = 0x1200000000L

.field public static final FIELD_TYPE_STRING:J = 0x900000000L

.field public static final FIELD_TYPE_UINT32:J = 0xd00000000L

.field public static final FIELD_TYPE_UINT64:J = 0x400000000L

.field public static final FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ProtoOutputStream"

.field public static final WIRE_TYPE_END_GROUP:I = 0x4

.field public static final WIRE_TYPE_FIXED32:I = 0x5

.field public static final WIRE_TYPE_FIXED64:I = 0x1

.field public static final WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRE_TYPE_MASK:I = 0x7

.field public static final WIRE_TYPE_START_GROUP:I = 0x3

.field public static final WIRE_TYPE_VARINT:I


# instance fields
.field private mBuffer:Landroid/util/proto/EncodedBuffer;

.field private mCompacted:Z

.field private mCopyBegin:I

.field private mDepth:I

.field private mExpectedObjectToken:J

.field private mNextObjectId:I

.field private mStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "Double"

    const-string v1, "Float"

    const-string v2, "Int64"

    const-string v3, "UInt64"

    const-string v4, "Int32"

    const-string v5, "Fixed64"

    const-string v6, "Fixed32"

    const-string v7, "Bool"

    const-string v8, "String"

    const-string v9, "Group"

    const-string v10, "Message"

    const-string v11, "Bytes"

    const-string v12, "UInt32"

    const-string v13, "Enum"

    const-string v14, "SFixed32"

    const-string v15, "SFixed64"

    const-string v16, "SInt32"

    const-string v17, "SInt64"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    return-void
.end method

.method private assertNotCompacted()V
    .locals 2

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFieldId(JJ)I
    .locals 21

    move-wide/from16 v0, p0

    const-wide v4, 0xf0000000000L

    and-long v6, v0, v4

    const-wide v8, 0xff00000000L

    and-long v10, v0, v8

    and-long v4, p2, v4

    and-long v8, p2, v8

    long-to-int v12, v0

    if-eqz v12, :cond_7

    cmp-long v12, v10, v8

    const-wide v13, 0x50000000000L

    if-nez v12, :cond_1

    cmp-long v12, v6, v4

    if-eqz v12, :cond_0

    cmp-long v12, v6, v13

    if-nez v12, :cond_1

    const-wide v15, 0x20000000000L

    cmp-long v12, v4, v15

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v12, v0

    return v12

    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v15

    const-wide v18, 0xb00000000L

    if-eqz v15, :cond_5

    if-eqz v12, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v16, v8, v18

    if-nez v16, :cond_2

    const-string/jumbo v13, "start"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v13, "write"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " called for field "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v13, v0

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " which should be used with "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v13, v10, v18

    if-nez v13, :cond_3

    const-string/jumbo v13, "start"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v13, "write"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v16, 0x50000000000L

    cmp-long v13, v6, v16

    if-nez v13, :cond_4

    const-string v13, " or writeRepeated"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v13, 0x2e

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v3, v8, v18

    if-nez v3, :cond_6

    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " called with an invalid fieldId: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". The proto field ID might be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid proto field "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " fieldId="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private compactIfNecessary()V
    .locals 4

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    :cond_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private compactSizes(I)V
    .locals 9

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    move v3, v2

    if-ge v2, v1, :cond_2

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    and-int/lit8 v4, v2, 0x7

    packed-switch v4, :pswitch_data_0

    new-instance v5, Landroid/util/proto/ProtoParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compactSizes Bad tag tag=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " wireType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groups not supported at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_2
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v5

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ltz v5, :cond_0

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :cond_0
    neg-int v7, v5

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    goto :goto_2

    :pswitch_3
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :goto_1
    :pswitch_4
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    goto/16 :goto_0

    :cond_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertObjectIdToOrdinal(I)I
    .locals 1

    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method private editEncodedSize(I)I
    .locals 12

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    add-int v1, v0, p1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    move v4, v3

    if-ge v3, v1, :cond_3

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v3

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    and-int/lit8 v5, v3, 0x7

    packed-switch v5, :pswitch_data_0

    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " wireType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    add-int/lit8 v2, v2, 0x4

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "groups not supported at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v8

    if-ltz v6, :cond_1

    if-ne v8, v6, :cond_0

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    neg-int v9, v6

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v8

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    :goto_1
    invoke-static {v8}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    goto :goto_3

    :pswitch_3
    add-int/lit8 v2, v2, 0x8

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_3

    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    :goto_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    goto/16 :goto_0

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endObjectImpl(JZ)V
    .locals 10

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v0, :cond_4

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v9, v2, 0x4

    invoke-virtual {v8, v9}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    :goto_0
    return-void

    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDepthFromToken(J)I
    .locals 4

    const/16 v0, 0x33

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getFieldCountString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string v0, "Repeated"

    return-object v0

    :cond_1
    const-wide v0, 0x50000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const-string v0, "Packed"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFieldIdString(J)Ljava/lang/String;
    .locals 8

    const-wide v0, 0xf0000000000L

    and-long/2addr v0, p1

    invoke-static {v0, v1}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fieldCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-wide v3, 0xff00000000L

    and-long/2addr v3, p1

    invoke-static {v3, v4}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fieldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fieldId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getFieldTypeString(J)Ljava/lang/String;
    .locals 3

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getObjectIdFromToken(J)I
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7ffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getRepeatedFromToken(J)Z
    .locals 4

    const/16 v0, 0x3c

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSizePosFromToken(J)I
    .locals 1

    long-to-int v0, p0

    return v0
.end method

.method private static getTagSize(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static getTagSizeFromToken(J)I
    .locals 4

    const/16 v0, 0x3d

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static makeFieldId(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method public static makeToken(IZIII)J
    .locals 6

    int-to-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const/16 v2, 0x3d

    shl-long/2addr v0, v2

    if-eqz p1, :cond_0

    const-wide/high16 v2, 0x1000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    or-long/2addr v0, v2

    const-wide/16 v2, 0x1ff

    int-to-long v4, p2

    and-long/2addr v2, v4

    const/16 v4, 0x33

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0x7ffff

    int-to-long v4, p3

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    int-to-long v4, p4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readRawTag()I
    .locals 2

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private startObjectImpl(IZ)J
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-wide v1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v3
.end method

.method public static token2String(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Token(0)"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoOutputStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tagSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sizePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeBoolImpl(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    :cond_0
    return-void
.end method

.method private writeBytesImpl(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_0
    return-void
.end method

.method private writeDoubleImpl(ID)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private writeEnumImpl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_0
    return-void
.end method

.method private writeFixed32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private writeFixed64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private writeFloatImpl(IF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private writeInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_0
    return-void
.end method

.method private writeInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_0
    return-void
.end method

.method private writeKnownLengthHeader(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedBoolImpl(IZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void
.end method

.method private writeRepeatedBytesImpl(I[B)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void
.end method

.method private writeRepeatedDoubleImpl(ID)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedEnumImpl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private writeRepeatedFixed32Impl(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedFixed64Impl(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedFloatImpl(IF)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private writeRepeatedInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private writeRepeatedSFixed32Impl(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedSFixed64Impl(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedSInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    return-void
.end method

.method private writeRepeatedSInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    return-void
.end method

.method private writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    :goto_1
    return-void
.end method

.method private writeRepeatedUInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method private writeRepeatedUInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private writeSFixed32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private writeSFixed64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private writeSInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    :cond_0
    return-void
.end method

.method private writeSInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    :cond_0
    return-void
.end method

.method private writeStringImpl(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private writeUInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    :cond_0
    return-void
.end method

.method private writeUInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_0
    return-void
.end method

.method private writeUnsignedVarintFromSignedInt(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method private writeUtf8String(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not possible"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    return-void
.end method

.method public end(J)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public endObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public endRepeatedObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBytes()[B
    .locals 2

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public start(J)J
    .locals 5

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    :cond_0
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x50000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call start(long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startObject(J)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public startRepeatedObject(J)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public write(JD)V
    .locals 6

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_1
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_2
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_3
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    :pswitch_5
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_6
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :pswitch_7
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_8
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_a
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_b
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    :pswitch_c
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    :pswitch_e
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    :pswitch_f
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    :pswitch_10
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_11
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    :pswitch_12
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_0

    :pswitch_13
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    :pswitch_14
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :pswitch_15
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    :pswitch_16
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_17
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    :pswitch_18
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_19
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    :pswitch_1a
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    :pswitch_1b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JF)V
    .locals 5

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_1
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_2
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_3
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_4
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    :pswitch_5
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_6
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :pswitch_7
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_8
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_9
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_a
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_b
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    :pswitch_d
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    :pswitch_e
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    :pswitch_f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    :pswitch_10
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_11
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    :pswitch_12
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_0

    :pswitch_13
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    :pswitch_14
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :pswitch_15
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    :pswitch_16
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_17
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    :pswitch_18
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_19
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    :pswitch_1a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    :pswitch_1b
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JI)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_2
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz p3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_8
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_a
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_b
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    :pswitch_c
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    :pswitch_d
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    :pswitch_e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    :pswitch_10
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    :pswitch_12
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_0

    :pswitch_13
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    :pswitch_14
    if-eqz p3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :pswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    :pswitch_16
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_17
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    :pswitch_18
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_19
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    :pswitch_1a
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    :pswitch_1b
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JJ)V
    .locals 6

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_1
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_3
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_4
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_0

    :pswitch_5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_6
    cmp-long v1, p3, v4

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_0

    :pswitch_7
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_0

    :pswitch_9
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_0

    :pswitch_c
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_0

    :pswitch_d
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_0

    :pswitch_f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_11
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_0

    :pswitch_12
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_0

    :pswitch_13
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_0

    :pswitch_14
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_0

    :pswitch_15
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_0

    :pswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_0

    :pswitch_17
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_0

    :pswitch_18
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_0

    :pswitch_19
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_0

    :pswitch_1a
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_0

    :pswitch_1b
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x501
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(JLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x109

    if-eq v1, v2, :cond_2

    const/16 v2, 0x209

    if-eq v1, v2, :cond_1

    const/16 v2, 0x509

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    nop

    :goto_1
    return-void
.end method

.method public write(JZ)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x108

    if-eq v1, v2, :cond_2

    const/16 v2, 0x208

    if-eq v1, v2, :cond_1

    const/16 v2, 0x508

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    nop

    :goto_1
    return-void
.end method

.method public write(J[B)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b -> :sswitch_3
        0x10c -> :sswitch_2
        0x20b -> :sswitch_1
        0x20c -> :sswitch_0
        0x50b -> :sswitch_1
        0x50c -> :sswitch_0
    .end sparse-switch
.end method

.method public writeBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    return-void
.end method

.method public writeBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    return-void
.end method

.method public writeDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    return-void
.end method

.method public writeEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    return-void
.end method

.method public writeFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    return-void
.end method

.method public writeFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    return-void
.end method

.method public writeFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    return-void
.end method

.method public writeInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    return-void
.end method

.method public writeInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    return-void
.end method

.method public writeObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    return-void
.end method

.method writeObjectImpl(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_0
    return-void
.end method

.method public writePackedBool(J[Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v4, p3, v1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedDouble(J[D)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedEnum(J[I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget v5, p3, v3

    if-ltz v5, :cond_1

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xa

    :goto_2
    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_3
    if-ge v1, v2, :cond_3

    aget v3, p3, v1

    invoke-direct {p0, v3}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public writePackedFixed32(J[I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedFixed64(J[J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedFloat(J[F)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedInt32(J[I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget v5, p3, v3

    if-ltz v5, :cond_1

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v6

    goto :goto_2

    :cond_1
    const/16 v6, 0xa

    :goto_2
    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_3
    if-ge v1, v2, :cond_3

    aget v3, p3, v1

    invoke-direct {p0, v3}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public writePackedInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writePackedSFixed32(J[I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x4

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedSFixed64(J[J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writePackedSInt32(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v5, p3, v3

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v3, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writePackedSInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writePackedUInt32(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v5, p3, v3

    invoke-static {v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v3, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writePackedUInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-wide v5, p3, v3

    invoke-static {v5, v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v4}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    nop

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v1

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writeRepeatedBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    return-void
.end method

.method public writeRepeatedBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    return-void
.end method

.method public writeRepeatedDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    return-void
.end method

.method public writeRepeatedEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    return-void
.end method

.method public writeRepeatedFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    return-void
.end method

.method public writeRepeatedFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    return-void
.end method

.method public writeRepeatedInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    return-void
.end method

.method writeRepeatedObjectImpl(I[B)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void
.end method

.method public writeRepeatedSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    return-void
.end method

.method public writeRepeatedSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public writeRepeatedUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    return-void
.end method

.method public writeSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    return-void
.end method

.method public writeSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    return-void
.end method

.method public writeSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    return-void
.end method

.method public writeSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    return-void
.end method

.method public writeString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public writeTag(II)V
    .locals 2

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    return-void
.end method

.method public writeUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    return-void
.end method
