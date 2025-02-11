.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    shl-int/lit8 v4, p3, 0x1

    add-int/2addr v4, v2

    shl-int/lit8 v5, p3, 0x1

    add-int/2addr v5, v3

    move/from16 v6, p1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v8, p2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int v10, v7, v4

    div-int v11, v9, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int v11, v2, v10

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    mul-int v12, v3, v10

    sub-int v12, v9, v12

    div-int/lit8 v12, v12, 0x2

    new-instance v13, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v13, v7, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v14, 0x0

    move v15, v14

    move v14, v12

    :goto_0
    if-ge v15, v3, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v16, v11

    :goto_1
    move/from16 v17, v16

    if-ge v0, v2, :cond_1

    move/from16 v18, v2

    invoke-virtual {v1, v0, v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    move-object/from16 v19, v1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    move/from16 v1, v17

    invoke-virtual {v13, v1, v14, v10, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_2

    :cond_0
    move/from16 v1, v17

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v16, v1, v10

    move/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_1

    :cond_1
    move-object/from16 v19, v1

    move/from16 v18, v2

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v10

    goto :goto_0

    :cond_2
    move-object/from16 v19, v1

    move/from16 v18, v2

    return-object v13

    :cond_3
    move/from16 v6, p1

    move/from16 v8, p2

    move-object/from16 v19, v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, 0x4

    if-eqz p5, :cond_1

    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v2

    invoke-static {v2, p3, p4, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested dimensions are too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only encode QR_CODE, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
