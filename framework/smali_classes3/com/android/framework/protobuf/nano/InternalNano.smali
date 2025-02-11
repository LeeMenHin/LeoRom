.class public final Lcom/android/framework/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4

.field protected static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldArray;->clone()Lcom/android/framework/protobuf/nano/FieldArray;

    move-result-object v0

    iput-object v0, p1, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    :cond_0
    return-void
.end method

.method public static computeMapFieldSize(Ljava/util/Map;III)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;III)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    invoke-static {v6, p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v7, p3, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    add-int v7, v1, v6

    invoke-static {v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "keys and values in maps cannot be null"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return v0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/InternalNano;->equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    :cond_7
    goto :goto_2

    :cond_8
    return v0
.end method

.method public static equals([D[D)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([F[F)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([I[I)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([J[J)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    array-length v4, p1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v5, p0, v0

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v5, p1, v3

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    if-lt v0, v2, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-lt v3, v4, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    return v5

    :cond_6
    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    aget-object v5, p0, v0

    aget-object v8, p1, v3

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static equals([[B[[B)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    array-length v4, p1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v5, p0, v0

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v5, p1, v3

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    if-lt v0, v2, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    if-lt v3, v4, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    return v5

    :cond_6
    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    aget-object v5, p0, v0

    aget-object v8, p1, v3

    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hashCode(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static hashCode([D)I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hashCode([F)I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hashCode([I)I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hashCode([J)I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    const/16 v4, 0x1f

    mul-int/2addr v4, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static hashCode([Z)I
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static hashCode([[B)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    const/16 v4, 0x1f

    mul-int/2addr v4, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static hashCodeForMap(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static final mergeMapEntry(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;",
            "IITV;II)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p1}, Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, p6, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    if-ne v3, p7, :cond_3

    const/16 v4, 0xb

    if-ne p4, v4, :cond_2

    move-object v4, p5

    check-cast v4, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_6

    nop

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    if-nez v2, :cond_4

    invoke-static {p3}, Lcom/android/framework/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v2

    :cond_4
    if-nez p5, :cond_5

    invoke-static {p4}, Lcom/android/framework/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object p5

    :cond_5
    invoke-interface {p1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_6
    :goto_2
    goto :goto_0
.end method

.method private static primitiveDefaultValue(I)Ljava/lang/Object;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a primitive type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v0

    :pswitch_2
    const-string v0, ""

    return-object v0

    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static serializeMapField(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;",
            "Ljava/util/Map<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    nop

    const/4 v4, 0x1

    invoke-static {v4, p3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6, p4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0, p2, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, v4, p3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    invoke-virtual {p0, v6, p4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "keys and values in maps cannot be null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
