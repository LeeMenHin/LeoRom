.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
    }
.end annotation


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field mPrivilegeApp:Z

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mUserId:I

.field private mWidgetData:[B

.field private restorePass:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iput-boolean p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    iput p8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->isYuvaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_0
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide v0
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 20

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_12

    nop

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :try_start_1
    invoke-static {v1, v4, v5, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    const/4 v12, 0x0

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, v11, v12

    add-int v14, v13, v12

    invoke-static {v11, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    move-object v7, v14

    add-int/2addr v13, v12

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v11, v13

    move v12, v13

    add-int v13, v14, v12

    invoke-static {v11, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    add-int/2addr v14, v12

    add-int/lit8 v10, v14, 0x1

    aget-byte v14, v11, v14

    move v12, v14

    add-int v14, v10, v12

    invoke-static {v11, v10, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_c

    move-object v15, v3

    move-object/from16 v3, p3

    :try_start_2
    invoke-static {v1, v13, v3, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v1, v17

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v16, :cond_0

    move-object/from16 v18, v1

    :try_start_3
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v8, v13, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v8, p7

    :try_start_4
    invoke-direct {v2, v8, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v15, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_c

    :cond_0
    move-object/from16 v18, v1

    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_0
    goto/16 :goto_d

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_3

    :catch_e
    move-exception v0

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_7

    :catch_10
    move-exception v0

    goto :goto_9

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_1
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_2
    if-eqz p8, :cond_2

    const-string v1, "BackupManagerService"

    const-string v2, "Illegal password; aborting"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catch_13
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_3
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_4
    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Needed padding mechanism unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_14
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_5
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_6
    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Needed decryption algorithm unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_15
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_7
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_8
    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Invalid block size in master key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_16
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_9
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_a
    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_17
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_b
    move-object v15, v3

    move-object/from16 v3, p3

    :goto_c
    if-eqz p8, :cond_1

    const-string v1, "BackupManagerService"

    const-string v2, "Needed parameter spec unavailable!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    :goto_d
    return-object v15
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 22

    move-object/from16 v1, p1

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_0
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    invoke-static {v12}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "PBKDF2WithHmacSHA1"

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    const-string v14, "PBKDF2WithHmacSHA1And8bit"

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-static/range {v13 .. v21}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    move-object v2, v0

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported encryption method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t read input header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t parse restore data header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-object v2
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    const/4 v2, 0x0

    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {p0, v4}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    const-string v5, "ANDROID BACKUP\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    if-gt v7, v8, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    move v8, v9

    nop

    :cond_1
    move v0, v8

    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "none"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-static {p1, v6, v10, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "BackupManagerService"

    const-string v9, "Archive is encrypted but no password given"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong header version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_6
    const-string v6, "BackupManagerService"

    const-string v7, "Didn\'t read the right header magic"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v2, :cond_8

    const-string v6, "BackupManagerService"

    const-string v7, "Invalid restore data; aborting."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_7
    const/4 v6, 0x0

    return-object v6

    :cond_8
    if-eqz v0, :cond_9

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_9
    move-object v6, v1

    :goto_4
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    if-ltz v1, :cond_1

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    move-object v7, v1

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/BackupManagerService;)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    :goto_0
    invoke-virtual {v7}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    nop

    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method


# virtual methods
.method restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    new-instance v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;-><init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V

    move-object v12, v0

    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v13, p7

    invoke-direct {v0, v10, v12, v13}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v9, v0

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_2a

    iput-boolean v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_22

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_1

    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0, v6}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iput-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    move-object/from16 v29, v13

    :goto_0
    move-object v11, v9

    goto/16 :goto_2b

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_22

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-wide v14, v4, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getEdmUserId()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v14, v9

    move/from16 v16, p5

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v22}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;IZZ)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    iget v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    iget-boolean v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    const/16 v28, 0x0

    move-object/from16 v20, v9

    move/from16 v22, p5

    move-object/from16 v23, v4

    move-object/from16 v24, v0

    move-object/from16 v25, v19

    move/from16 v26, v2

    move/from16 v27, v8

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;IZZ)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    :goto_2
    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v14, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v14, v4, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v8, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v14, v4, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v8, v3}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    nop

    move-object v2, v4

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    move-object v11, v9

    goto/16 :goto_29

    :cond_3
    :try_start_4
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_22

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v0

    :try_start_6
    iget-wide v13, v4, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v13, v14}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v29, v2

    move-object v2, v4

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    move-object v11, v9

    goto/16 :goto_2a

    :catch_1
    move-exception v0

    move-object/from16 v29, v2

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    :try_start_7
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v15, v2

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v15}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v8

    aget v2, v2, v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_22

    packed-switch v2, :pswitch_data_0

    move-object v13, v3

    move-object v14, v4

    move-object v10, v9

    :try_start_8
    const-string v2, "BackupManagerService"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_21

    goto/16 :goto_5

    :pswitch_0
    :try_start_9
    iget-object v2, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v8, "a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BackupManagerService"

    const-string v8, "apk present but ACCEPT"

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v0, 0x0

    :cond_5
    move-object v13, v3

    move-object v14, v4

    move-object v10, v9

    goto/16 :goto_6

    :pswitch_1
    :try_start_a
    iget-object v2, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v8, "a"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "BackupManagerService"

    const-string v8, "APK file; installing"

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-boolean v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    invoke-static {v2}, Lcom/android/server/backup/utils/RestoreUtils;->setPrivilegeApp(Z)V

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v16, v2

    move-object v2, v10

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move-object/from16 v4, v16

    const/4 v10, 0x0

    const/4 v10, 0x1

    move-object v7, v14

    move-object v10, v9

    move-object v9, v12

    :try_start_c
    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_3
    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v14, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    const/4 v3, 0x1

    return v3

    :catch_2
    move-exception v0

    move-object v6, v11

    move-object/from16 v42, v12

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move-object v13, v3

    move-object v14, v4

    move-object v10, v9

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    const/4 v0, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v11

    move-object/from16 v42, v12

    const/4 v3, 0x1

    move-object/from16 v7, p1

    move-object/from16 v29, p7

    move-object v11, v10

    goto/16 :goto_2b

    :catch_4
    move-exception v0

    move v3, v6

    move-object v6, v11

    move-object/from16 v42, v12

    :goto_4
    move-object/from16 v7, p1

    move-object/from16 v29, p7

    move-object v11, v9

    goto/16 :goto_2b

    :pswitch_2
    move-object v13, v3

    move-object v14, v4

    move-object v10, v9

    const/4 v0, 0x0

    goto :goto_6

    :goto_5
    :try_start_d
    const-string v3, "Invalid policy from manifest"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget-object v2, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_21

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_8
    move v2, v0

    if-eqz v2, :cond_9

    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_9

    const-string v0, "BackupManagerService"

    const-string v3, "Reusing existing agent instance"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v2, :cond_16

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_16

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v0

    const/16 v3, 0xa0

    const/16 v4, 0xa

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getEdmUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v13, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    goto :goto_7

    :cond_a
    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-lt v0, v4, :cond_b

    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-gt v0, v3, :cond_b

    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v0, v13, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    goto :goto_7

    :cond_b
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    :goto_7
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-lt v0, v4, :cond_c

    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-gt v0, v3, :cond_c

    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v13, v6, v5}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZI)V

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v0, v13, v5}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_d
    const-string v0, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup agent ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") => no clear"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    const-string v0, "BackupManagerService"

    const-string v5, "We\'ve initialized this app already; no clear required"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->setUpPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v0, v6

    if-nez v0, :cond_10

    const-string v0, "BackupManagerService"

    const-string v3, "changing backup agent name to null for edm restore request"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_7

    const/4 v6, 0x0

    :try_start_10
    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "k"

    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    nop

    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    nop

    :goto_a
    invoke-virtual {v3, v0, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    goto :goto_d

    :cond_10
    const/4 v6, 0x0

    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-lt v0, v4, :cond_12

    iget v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mUserId:I

    if-gt v0, v3, :cond_12

    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-nez v0, :cond_12

    const-string v0, "BackupManagerService"

    const-string v3, "changing backup agent restore request for nowner"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "k"

    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    nop

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    nop

    :goto_b
    invoke-virtual {v3, v0, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    goto :goto_d

    :cond_12
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v4, "k"

    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    nop

    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    nop

    :goto_c
    invoke-virtual {v0, v3, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :goto_d
    iput-object v13, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    :goto_e
    :try_start_11
    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_15

    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    goto :goto_11

    :catch_8
    move-exception v0

    const/4 v6, 0x0

    :goto_f
    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_14
    :goto_10
    nop

    :cond_15
    :goto_11
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_17

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_16
    const/4 v6, 0x0

    :cond_17
    :goto_12
    if-eqz v2, :cond_18

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    const/4 v2, 0x0

    :cond_18
    if-eqz v2, :cond_24

    const/4 v5, 0x1

    :try_start_12
    iget-wide v7, v14, Lcom/android/server/backup/FileMetadata;->size:J

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v32
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1e

    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v30, v0

    move/from16 v31, p6

    invoke-virtual/range {v30 .. v35}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v0, "obb"

    iget-object v9, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring OBB file for "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x0

    aget-object v16, v6, v9

    iget-wide v3, v14, Lcom/android/server/backup/FileMetadata;->size:J

    iget v6, v14, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v9, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_11

    move-wide/from16 v37, v7

    :try_start_14
    iget-wide v7, v14, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_d

    move-object/from16 v39, v10

    :try_start_15
    iget-wide v10, v14, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_b

    move/from16 v40, v2

    :try_start_16
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9

    move-object v2, v14

    move-object v14, v0

    move-object/from16 v27, v15

    move-object v15, v13

    move-wide/from16 v17, v3

    move/from16 v19, v6

    move-object/from16 v20, v9

    move-wide/from16 v21, v7

    move-wide/from16 v23, v10

    move/from16 v25, p6

    :try_start_17
    invoke-virtual/range {v14 .. v26}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    goto/16 :goto_13

    :catch_9
    move-exception v0

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_14

    :catch_a
    move-exception v0

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_15

    :catch_b
    move-exception v0

    move/from16 v40, v2

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move/from16 v40, v2

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_15

    :catch_d
    move-exception v0

    move/from16 v40, v2

    move-object/from16 v39, v10

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_14

    :catch_e
    move-exception v0

    move/from16 v40, v2

    move-object/from16 v39, v10

    move-object v2, v14

    move-object/from16 v27, v15

    goto/16 :goto_15

    :cond_19
    move/from16 v40, v2

    move-wide/from16 v37, v7

    move-object/from16 v39, v10

    move-object v2, v14

    move-object/from16 v27, v15

    const-string/jumbo v0, "k"

    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    iput-wide v3, v2, Lcom/android/server/backup/FileMetadata;->version:J

    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v15, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v16

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v18, v3, v4

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object v14, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v20, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_13

    :cond_1a
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking agent to restore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "BackupManagerService"

    const-string/jumbo v3, "system process agent - spinning a thread"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v15, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v4, v6

    move-object v14, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v19, p6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_13

    :cond_1b
    iget-object v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v15, v0, v3

    iget-wide v6, v2, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v2, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v9, v2, Lcom/android/server/backup/FileMetadata;->mode:J

    move-object/from16 v41, v4

    iget-wide v3, v2, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget-object v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26

    move-wide/from16 v16, v6

    move/from16 v18, v0

    move-object/from16 v19, v41

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v3

    move/from16 v25, p6

    invoke-interface/range {v14 .. v26}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_f

    :goto_13
    goto :goto_17

    :catch_f
    move-exception v0

    goto :goto_14

    :catch_10
    move-exception v0

    goto :goto_15

    :catch_11
    move-exception v0

    move/from16 v40, v2

    move-wide/from16 v37, v7

    move-object/from16 v39, v10

    move-object v2, v14

    move-object/from16 v27, v15

    :goto_14
    :try_start_18
    const-string v3, "BackupManagerService"

    const-string v4, "Agent crashed during full restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    const/4 v5, 0x0

    const/4 v0, 0x0

    goto :goto_16

    :catch_12
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v11, v39

    const/4 v3, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_26

    :catch_13
    move-exception v0

    move/from16 v40, v2

    move-wide/from16 v37, v7

    move-object/from16 v39, v10

    move-object v2, v14

    move-object/from16 v27, v15

    :goto_15
    :try_start_19
    const-string v3, "BackupManagerService"

    const-string v4, "Couldn\'t establish restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1d

    const/4 v5, 0x0

    const/4 v0, 0x0

    nop

    :goto_16
    move/from16 v40, v0

    :goto_17
    if-eqz v40, :cond_21

    const/4 v0, 0x1

    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1b

    move v4, v0

    move-wide/from16 v7, v37

    :goto_18
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_20

    move-object/from16 v6, p3

    :try_start_1b
    array-length v0, v6
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-lez v0, :cond_1c

    :try_start_1c
    array-length v0, v6
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    move-object/from16 v42, v12

    :goto_19
    move-object/from16 v11, v39

    goto/16 :goto_20

    :cond_1c
    long-to-int v0, v7

    :goto_1a
    move v9, v0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    :try_start_1d
    invoke-virtual {v10, v6, v11, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_18

    move v14, v0

    if-ltz v14, :cond_1d

    move-object/from16 v42, v12

    :try_start_1e
    iget-wide v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    move/from16 v43, v9

    int-to-long v9, v14

    add-long/2addr v11, v9

    :try_start_1f
    iput-wide v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    move-object v7, v10

    move-object/from16 v11, v39

    const/4 v3, 0x1

    goto/16 :goto_27

    :cond_1d
    move/from16 v43, v9

    move-object/from16 v42, v12

    :goto_1b
    if-gtz v14, :cond_1e

    goto :goto_1e

    :cond_1e
    int-to-long v9, v14

    sub-long/2addr v7, v9

    if-eqz v4, :cond_1f

    const/4 v9, 0x0

    :try_start_20
    invoke-virtual {v3, v6, v9, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_17

    goto :goto_1c

    :catch_17
    move-exception v0

    move-object v9, v0

    :try_start_21
    const-string v9, "BackupManagerService"

    const-string v10, "Failed to write to restore pipe"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    const/4 v0, 0x0

    move v4, v0

    :cond_1f
    :goto_1c
    move-object/from16 v12, v42

    goto :goto_18

    :catch_18
    move-exception v0

    move-object/from16 v42, v12

    move-object v7, v10

    move-object/from16 v11, v39

    const/4 v3, 0x1

    goto :goto_1d

    :catch_19
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v11, v39

    const/4 v3, 0x1

    move-object/from16 v7, p1

    :goto_1d
    move-object/from16 v29, p7

    goto/16 :goto_2b

    :cond_20
    move-object/from16 v42, v12

    move-object/from16 v6, p3

    :goto_1e
    :try_start_22
    iget-wide v9, v2, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1a

    move-object/from16 v11, v39

    :try_start_23
    invoke-virtual {v11, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    move/from16 v9, p6

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v5, v0

    goto :goto_1f

    :catch_1a
    move-exception v0

    move-object/from16 v11, v39

    const/4 v3, 0x1

    move-object/from16 v7, p1

    move-object/from16 v29, p7

    goto/16 :goto_2b

    :catch_1b
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v11, v39

    move-object/from16 v6, p3

    const/4 v3, 0x1

    goto :goto_21

    :cond_21
    move/from16 v9, p6

    move-object/from16 v42, v12

    move-object/from16 v11, v39

    move-object/from16 v6, p3

    move-wide/from16 v7, v37

    :goto_1f
    if-nez v5, :cond_23

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Agent failure restoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; now ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_22
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1c

    const/4 v3, 0x1

    :try_start_24
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->setEdmRestoreFail(Z)V

    goto :goto_22

    :catch_1c
    move-exception v0

    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_26

    :cond_23
    const/4 v3, 0x1

    goto :goto_22

    :catch_1d
    move-exception v0

    move-object/from16 v42, v12

    move-object/from16 v11, v39

    const/4 v3, 0x1

    move-object/from16 v6, p3

    :goto_21
    move-object/from16 v7, p1

    move-object/from16 v29, p7

    goto/16 :goto_2b

    :catch_1e
    move-exception v0

    move-object v6, v11

    move-object/from16 v42, v12

    const/4 v3, 0x1

    move-object v11, v10

    move-object/from16 v7, p1

    goto/16 :goto_28

    :cond_24
    move/from16 v9, p6

    move/from16 v40, v2

    move-object v6, v11

    move-object/from16 v42, v12

    move-object v2, v14

    move-object/from16 v27, v15

    const/4 v3, 0x1

    move-object v11, v10

    :goto_22
    if-nez v40, :cond_29

    const-string v0, "BackupManagerService"

    const-string v4, "[discarding file content]"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v7, 0x1ff

    add-long/2addr v4, v7

    const-wide/16 v7, -0x200

    and-long/2addr v4, v7

    :goto_23
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_28

    array-length v0, v6

    int-to-long v7, v0

    cmp-long v0, v4, v7

    if-lez v0, :cond_25

    array-length v0, v6
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_20

    goto :goto_24

    :cond_25
    long-to-int v0, v4

    :goto_24
    move-object/from16 v7, p1

    const/4 v8, 0x0

    :try_start_25
    invoke-virtual {v7, v6, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    int-to-long v14, v10

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-ltz v10, :cond_26

    iget-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long/2addr v8, v14

    iput-wide v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    :cond_26
    const-wide/16 v8, 0x0

    cmp-long v10, v14, v8

    if-gtz v10, :cond_27

    goto :goto_25

    :cond_27
    sub-long/2addr v4, v14

    nop

    move/from16 v9, p6

    goto :goto_23

    :cond_28
    move-object/from16 v7, p1

    :goto_25
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1f

    goto :goto_29

    :catch_1f
    move-exception v0

    goto :goto_27

    :catch_20
    move-exception v0

    :goto_26
    move-object/from16 v7, p1

    :goto_27
    move-object/from16 v29, p7

    goto :goto_2b

    :cond_29
    move-object/from16 v7, p1

    goto :goto_29

    :catch_21
    move-exception v0

    move-object v6, v11

    move-object/from16 v42, v12

    const/4 v3, 0x1

    move-object/from16 v7, p1

    move-object v11, v10

    :goto_28
    move-object/from16 v29, p7

    goto :goto_2b

    :cond_2a
    move-object v2, v4

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    move-object v11, v9

    :cond_2b
    :goto_29
    move-object/from16 v29, p7

    :goto_2a
    move-object/from16 v36, v2

    goto :goto_2c

    :catch_22
    move-exception v0

    move v3, v6

    move-object v7, v10

    move-object v6, v11

    move-object/from16 v42, v12

    move-object v11, v9

    move-object/from16 v29, p7

    :goto_2b
    const-string v2, "BackupManagerService"

    const-string/jumbo v4, "io exception on restore socket read"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_2c
    nop

    const/16 v36, 0x0

    :goto_2c
    move-object/from16 v0, v36

    if-eqz v0, :cond_2d

    move/from16 v44, v3

    goto :goto_2d

    :cond_2d
    const/16 v44, 0x0

    :goto_2d
    return v44

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 11

    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string v1, "com.android.sharedstoragebackup"

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_3
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_4
    const-wide/16 v2, 0x0

    :try_start_4
    iput-wide v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_5

    :cond_5
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/backup/BackupManagerService;->setEdmRestoreFail(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    nop

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_4

    :goto_3
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :goto_4
    nop

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_6
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_6
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :cond_7
    const v3, 0x8000

    :try_start_8
    new-array v3, v3, [B

    move-object v6, v3

    :cond_8
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v9

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restorePass:Z

    if-nez v4, :cond_9

    sget-object v4, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_9
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    nop

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_7

    :goto_6
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_8

    :goto_7
    nop

    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_a
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_a
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    :catchall_3
    move-exception v2

    goto :goto_c

    :catch_3
    move-exception v2

    :try_start_c
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to read restore input"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverRestoreFail()V

    :cond_b
    const-string v3, "BackupManagerService"

    const-string v4, "Setting EdmRestoreFail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/backup/BackupManagerService;->setEdmRestoreFail(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v0, :cond_c

    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    :catch_4
    move-exception v3

    goto :goto_a

    :cond_c
    :goto_9
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_b

    :goto_a
    nop

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_e
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_d
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_4
    move-exception v1

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v1

    :goto_c
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v0, :cond_e

    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_d

    :catch_5
    move-exception v3

    goto :goto_e

    :cond_e
    :goto_d
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_f

    :goto_e
    nop

    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_11
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    :cond_f
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    :catchall_5
    move-exception v1

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v1
.end method
