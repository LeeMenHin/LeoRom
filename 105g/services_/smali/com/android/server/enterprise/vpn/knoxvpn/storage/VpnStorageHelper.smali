.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VpnStorageHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpn.StorageHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return v0
.end method

.method private convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .locals 9

    const-string v0, "containerID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "adminUid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "adminUid"

    int-to-long v5, v3

    int-to-long v7, v2

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 9

    const-string v0, "CREATE TABLE %s (%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "%s, PRIMARY KEY (%s)"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v2, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ");"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "KnoxVpn.StorageHelper"

    const-string/jumbo v6, "onTableFound Created Table %s with Columns %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v7, v1, v4

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/storage/Table;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE 1=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0
.end method

.method private static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0

    return-void
.end method

.method private static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0

    return-void
.end method

.method private static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static translateToAdminLUID(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    shl-long v0, p2, v0

    or-long/2addr v0, p0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    nop

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "delete operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v1
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "= ? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    goto :goto_4

    :goto_3
    nop

    const-string v1, "KnoxVpn.StorageHelper"

    const-string v3, "could not execute deleteDataByFields"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v2
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxVpn.StorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "KnoxVpn.StorageHelper"

    const-string/jumbo v2, "doTableCreationOrUpdate EX:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "KnoxVpn.StorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doTableCreationOrUpdate Done + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :goto_2
    throw v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v5

    array-length v5, v1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "= ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    move-object/from16 v15, p3

    move-object v14, v2

    move-object/from16 v16, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_5

    :cond_2
    :goto_1
    const/4 v4, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object v15, v4

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v14

    move-object v6, v15

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v13, v2

    if-eqz v13, :cond_4

    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v3, v16

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v3, v16

    :goto_5
    :try_start_2
    const-string v5, "KnoxVpn.StorageHelper"

    const-string v6, "could not execute getDataByFields"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v14, v2

    move-object/from16 v16, v3

    move-object v15, v4

    :cond_6
    :goto_6
    return-object v11

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "insert operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxVpn.StorageHelper"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "KnoxVpn.StorageHelper"

    const-string/jumbo v1, "onCreate is called .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxVpn.StorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    array-length v5, p2

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p2, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "= ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v1, p1, p4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpn.StorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute putDataByFields"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public declared-synchronized query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    move-object/from16 v1, p3

    monitor-enter p0

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v12, v4

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_2
    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "KnoxVpn.StorageHelper"

    const-string v4, "Failed on query"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-object v2

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    nop

    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_1

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "KnoxVpn.StorageHelper"

    const-string/jumbo v3, "update operation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v1
.end method
