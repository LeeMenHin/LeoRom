.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, p1

    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xec

    invoke-virtual {v1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v4, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v6, "[)>\u001e05\u001d"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_0
    const-string v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xed

    invoke-virtual {v1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v4, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v6, "[)>\u001e06\u001d"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v0, v2

    invoke-interface {v4, v1}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v6

    if-ge v4, v6, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_4

    const/16 v5, 0xfe

    invoke-virtual {v1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x81

    if-ge v7, v6, :cond_5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v8, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static findMinimums([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, p2

    move p2, v0

    :goto_0
    const/4 v2, 0x6

    if-ge p2, v2, :cond_2

    aget v2, p0, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, p2

    aget v2, p1, p2

    if-le v1, v2, :cond_0

    move v1, v2

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    if-ne v1, v2, :cond_1

    aget-byte v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p3, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static getMinimumCount([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static illegalCharacter(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNativeC40(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNativeText(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNativeX12(C)Z
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSpecialB256(C)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    goto :goto_0

    :cond_1
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    add-int v6, v1, v5

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v6, v7, :cond_7

    const v6, 0x7fffffff

    new-array v7, v2, [B

    new-array v2, v2, [I

    invoke-static {v3, v2, v6, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v6

    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v13

    aget v14, v2, v4

    if-ne v14, v6, :cond_2

    return v4

    :cond_2
    if-ne v13, v12, :cond_3

    aget-byte v4, v7, v8

    if-lez v4, :cond_3

    return v8

    :cond_3
    if-ne v13, v12, :cond_4

    aget-byte v4, v7, v10

    if-lez v4, :cond_4

    return v10

    :cond_4
    if-ne v13, v12, :cond_5

    aget-byte v4, v7, v9

    if-lez v4, :cond_5

    return v9

    :cond_5
    if-ne v13, v12, :cond_6

    aget-byte v4, v7, v11

    if-lez v4, :cond_6

    return v11

    :cond_6
    return v12

    :cond_7
    add-int v6, v1, v5

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    aget v7, v3, v4

    float-to-double v10, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v15

    double-to-float v7, v10

    aput v7, v3, v4

    goto :goto_2

    :cond_8
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_9

    aget v7, v3, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    int-to-float v7, v7

    aput v7, v3, v4

    aget v7, v3, v4

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v7, v10

    aput v7, v3, v4

    goto :goto_2

    :cond_9
    aget v7, v3, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    int-to-float v7, v7

    aput v7, v3, v4

    aget v7, v3, v4

    add-float/2addr v7, v13

    aput v7, v3, v4

    :goto_2
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    const v10, 0x3faaaaab

    const v11, 0x402aaaab

    const v14, 0x3f2aaaab

    if-eqz v7, :cond_a

    aget v7, v3, v12

    add-float/2addr v7, v14

    aput v7, v3, v12

    goto :goto_3

    :cond_a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_b

    aget v7, v3, v12

    add-float/2addr v7, v11

    aput v7, v3, v12

    goto :goto_3

    :cond_b
    aget v7, v3, v12

    add-float/2addr v7, v10

    aput v7, v3, v12

    :goto_3
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_c

    aget v7, v3, v9

    add-float/2addr v7, v14

    aput v7, v3, v9

    goto :goto_4

    :cond_c
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_d

    aget v7, v3, v9

    add-float/2addr v7, v11

    aput v7, v3, v9

    goto :goto_4

    :cond_d
    aget v7, v3, v9

    add-float/2addr v7, v10

    aput v7, v3, v9

    :goto_4
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x3

    aget v10, v3, v7

    add-float/2addr v10, v14

    aput v10, v3, v7

    goto :goto_5

    :cond_e
    const/4 v7, 0x3

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v10

    if-eqz v10, :cond_f

    aget v10, v3, v7

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v3, v7

    goto :goto_5

    :cond_f
    aget v10, v3, v7

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v3, v7

    :goto_5
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x4

    aget v10, v3, v7

    const/high16 v11, 0x3f400000    # 0.75f

    add-float/2addr v10, v11

    aput v10, v3, v7

    goto :goto_6

    :cond_10
    const/4 v7, 0x4

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v10

    if-eqz v10, :cond_11

    aget v10, v3, v7

    const/high16 v11, 0x40880000    # 4.25f

    add-float/2addr v10, v11

    aput v10, v3, v7

    goto :goto_6

    :cond_11
    aget v10, v3, v7

    const/high16 v11, 0x40500000    # 3.25f

    add-float/2addr v10, v11

    aput v10, v3, v7

    :goto_6
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v7

    if-eqz v7, :cond_12

    aget v7, v3, v8

    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v7, v10

    aput v7, v3, v8

    goto :goto_7

    :cond_12
    aget v7, v3, v8

    add-float/2addr v7, v13

    aput v7, v3, v8

    :goto_7
    const/4 v7, 0x4

    if-lt v5, v7, :cond_1d

    new-array v7, v2, [I

    new-array v10, v2, [B

    const v11, 0x7fffffff

    invoke-static {v3, v7, v11, v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    invoke-static {v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v11

    aget v13, v7, v4

    aget v14, v7, v8

    if-ge v13, v14, :cond_13

    aget v13, v7, v4

    aget v14, v7, v12

    if-ge v13, v14, :cond_13

    aget v13, v7, v4

    aget v14, v7, v9

    if-ge v13, v14, :cond_13

    aget v13, v7, v4

    const/4 v14, 0x3

    aget v2, v7, v14

    if-ge v13, v2, :cond_13

    aget v2, v7, v4

    const/4 v13, 0x4

    aget v14, v7, v13

    if-ge v2, v14, :cond_13

    return v4

    :cond_13
    aget v2, v7, v8

    aget v13, v7, v4

    if-lt v2, v13, :cond_1c

    aget-byte v2, v10, v12

    aget-byte v13, v10, v9

    add-int/2addr v2, v13

    const/4 v13, 0x3

    aget-byte v14, v10, v13

    add-int/2addr v2, v14

    const/4 v13, 0x4

    aget-byte v14, v10, v13

    add-int/2addr v2, v14

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    if-ne v11, v12, :cond_15

    aget-byte v2, v10, v13

    if-lez v2, :cond_15

    return v13

    :cond_15
    if-ne v11, v12, :cond_16

    aget-byte v2, v10, v9

    if-lez v2, :cond_16

    return v9

    :cond_16
    if-ne v11, v12, :cond_17

    const/4 v2, 0x3

    aget-byte v13, v10, v2

    if-lez v13, :cond_17

    return v2

    :cond_17
    aget v2, v7, v12

    add-int/2addr v2, v12

    aget v13, v7, v4

    if-ge v2, v13, :cond_1d

    aget v2, v7, v12

    add-int/2addr v2, v12

    aget v8, v7, v8

    if-ge v2, v8, :cond_1d

    aget v2, v7, v12

    add-int/2addr v2, v12

    const/4 v8, 0x4

    aget v8, v7, v8

    if-ge v2, v8, :cond_1d

    aget v2, v7, v12

    add-int/2addr v2, v12

    aget v8, v7, v9

    if-ge v2, v8, :cond_1d

    aget v2, v7, v12

    const/4 v8, 0x3

    aget v9, v7, v8

    if-ge v2, v9, :cond_18

    return v12

    :cond_18
    aget v2, v7, v12

    aget v9, v7, v8

    if-ne v2, v9, :cond_1d

    add-int v2, v1, v5

    add-int/2addr v2, v12

    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x3

    return v8

    :cond_19
    const/4 v8, 0x3

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_9

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    :goto_9
    return v12

    :cond_1c
    :goto_a
    return v8

    :cond_1d
    nop

    const/4 v2, 0x6

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(CI)C
    .locals 3

    const/16 v0, 0x95

    mul-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0xfd

    add-int/lit8 v0, v0, 0x1

    add-int v1, p0, v0

    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    int-to-char v2, v1

    goto :goto_0

    :cond_0
    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    :goto_0
    return v2
.end method
