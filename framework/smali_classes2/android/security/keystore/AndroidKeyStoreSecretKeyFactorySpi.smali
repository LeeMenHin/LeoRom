.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# static fields
.field private static final KEY_USAGE_NUM:I = 0x9


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 37

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v7, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    :try_start_0
    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v3, 0x100002be

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v5, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v5, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v3

    :goto_0
    move v10, v0

    move v11, v3

    goto :goto_1

    :cond_0
    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iget-object v5, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v5, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v3

    goto :goto_0

    :goto_1
    nop

    const v0, 0x30000003

    const-wide/16 v3, -0x1

    invoke-virtual {v7, v0, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_8

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v5, v8

    if-gtz v0, :cond_7

    long-to-int v15, v5

    const v0, 0x20000001

    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    const v0, 0x20000006

    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v28, v0

    nop

    move/from16 v8, v28

    :try_start_1
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v0

    nop

    :try_start_2
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    :goto_3
    nop

    const-wide/32 v8, 0x7fffffff

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    nop

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    nop

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    const v0, 0x20000005

    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    const v0, 0x20000004

    invoke-virtual {v7, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    iget-object v0, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v8, 0x100001f8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v0

    iget-object v14, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v14, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v8

    move v14, v8

    const v8, -0x5ffffe0a

    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v8

    nop

    nop

    const v6, 0x60000190

    invoke-virtual {v7, v6}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000191

    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v28

    const v8, 0x60000192

    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v31

    const v8, 0x700001f7

    invoke-virtual {v7, v8}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v8

    xor-int/2addr v8, v2

    move/from16 v32, v8

    const v8, 0x300001f9

    invoke-virtual {v7, v8, v3, v4}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v3

    const-wide/32 v12, 0x7fffffff

    cmp-long v8, v3, v12

    if-gtz v8, :cond_6

    if-eqz v32, :cond_2

    if-eqz v14, :cond_2

    if-nez v0, :cond_2

    move/from16 v23, v2

    goto :goto_4

    :cond_2
    move/from16 v23, v9

    :goto_4
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v12, 0x700001fa

    invoke-virtual {v8, v12}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v29

    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v12, 0x700001fb

    invoke-virtual {v8, v12}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v30

    const/4 v8, 0x0

    const/4 v12, 0x2

    if-eq v0, v12, :cond_4

    if-ne v14, v12, :cond_3

    goto :goto_5

    :cond_3
    move v2, v8

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_6

    :cond_5
    move v2, v9

    :goto_6
    iget-object v8, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v9, 0x700001fc

    invoke-virtual {v8, v9}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v33

    new-instance v34, Landroid/security/keystore/KeyInfo;

    long-to-int v13, v3

    move-object/from16 v8, v34

    move-object/from16 v9, p1

    move v12, v15

    move/from16 v22, v13

    move-object v13, v6

    move/from16 v35, v14

    move-object/from16 v14, v28

    move/from16 v36, v15

    move-object/from16 v15, v31

    move/from16 v21, v32

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v2

    move/from16 v27, v33

    invoke-direct/range {v8 .. v27}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZZZ)V

    return-object v34

    :cond_6
    move/from16 v35, v14

    move/from16 v36, v15

    new-instance v2, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User authentication timeout validity too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :try_start_4
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Key size not available"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/ProviderException;

    const-string v2, "Key origin not available"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Unsupported key characteristic"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getKnoxKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/knox/keystore/KnoxKeyInfo;
    .locals 33

    move-object/from16 v0, p1

    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    invoke-static/range {p0 .. p3}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v15

    const v4, 0x700007d0

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v16

    const v4, -0x6ffff82f

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v14

    const/4 v4, 0x0

    if-eqz v14, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/lang/String;-><init>([B)V

    move-object v4, v5

    :cond_0
    move-object v13, v4

    const v4, -0x6ffff82e

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v12

    const/4 v4, 0x0

    if-eqz v12, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([B)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_1
    move-object/from16 v17, v4

    const v4, -0x6ffff82d

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    const-string v7, "AndroidKeyStoreSecretKeyFactorySpi: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accessorIds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "DETERMINED_BY_CCM"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "AndroidKeyStoreSecretKeyFactorySpi: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CCM alias "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, p0

    invoke-virtual {v10, v13, v8}, Landroid/security/KeyStore;->listAccessorsFromDb(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v5

    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "AndroidKeyStoreSecretKeyFactorySpi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessor list: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v10, p0

    move-object v3, v4

    :goto_0
    const v4, 0x30000838

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v20

    const/16 v4, 0x9

    new-array v9, v4, [Z

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    const-wide/16 v6, 0x1

    shl-long v22, v6, v5

    and-long v22, v20, v22

    cmp-long v6, v22, v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v4

    const v4, -0x6ffff7c7

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v8

    const/4 v4, 0x0

    if-eqz v8, :cond_5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_5
    move-object/from16 v19, v4

    const v4, -0x6ffff7ca

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_6

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    move-object v4, v5

    :cond_6
    move-object/from16 v22, v4

    const v4, 0x70000899

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v23

    const v4, -0x6ffff7c6

    invoke-virtual {v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBytes(I)[B

    move-result-object v24

    new-instance v25, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    move-object/from16 v4, v25

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v26, v7

    move-object v7, v3

    move-object/from16 v27, v8

    move-object v8, v13

    move-object/from16 v28, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v28

    move-object/from16 v29, v11

    move-object/from16 v11, v19

    move-object/from16 v30, v12

    move-object/from16 v12, v22

    move-object/from16 v31, v13

    move/from16 v13, v23

    move-object/from16 v32, v14

    move-object/from16 v14, v24

    invoke-direct/range {v4 .. v14}, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;-><init>(Landroid/security/keystore/KeyInfo;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[B)V

    return-object v25

    :cond_7
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain information about key. Keystore error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p2, :cond_8

    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "USRPKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    goto :goto_3

    :cond_4
    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "USRSKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    nop

    const/4 v3, 0x0

    const-class v4, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    invoke-static {v4, v2, v1, v5}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKnoxKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    move-result-object v3

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v5

    invoke-static {v4, v2, v1, v5}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v3

    :goto_4
    return-object v3

    :cond_6
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
