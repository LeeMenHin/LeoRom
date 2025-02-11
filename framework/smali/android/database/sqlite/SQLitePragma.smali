.class public Landroid/database/sqlite/SQLitePragma;
.super Ljava/lang/Object;
.source "SQLitePragma.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLitePragma"

.field private static final mJournalPattern:Ljava/util/regex/Pattern;

.field private static final mNumberPattern:Ljava/util/regex/Pattern;

.field private static final mPragmaPattern:Ljava/util/regex/Pattern;

.field private static final mTurnOnPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^pragma\\s+(main\\.)?(case_sensitive_like|cache_size|automatic_index|busy_timeout|journal_mode)\\s*(=|\\()(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    const-string v0, "(on|yes|1|true)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\s*[`\"\'\\[\\s]*\\s*(\\+|-)?\\s*(0x)?([0-9a-f]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\s*[`\"\'\\[\\s]*\\s*(DELETE|TUNCATE|PERSIST|MEMORY|WAL|OFF)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    return-void
.end method

.method private checkAndSetSpecialPragma()V
    .locals 4

    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "automatic_index"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateAutomaticIndex(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "case_sensitive_like"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCaseSensitveLike(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "cache_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCacheSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "busy_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateBusyTimeout(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "journal_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateJournalMode(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public static checkAndSetSpecialPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLitePragma;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLitePragma;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {v0}, Landroid/database/sqlite/SQLitePragma;->checkAndSetSpecialPragma()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SQLitePragma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSetSpecialPragma failed from this sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private extractIntFromValue(Ljava/lang/String;)I
    .locals 6

    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_1

    const-string v5, "-"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not extract int value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutomaticIndex(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setAutomaticIndexEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SQLitePragma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get automatic_index value from this sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateBusyTimeout(Ljava/lang/String;)V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setBusyTimeout(J)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get busy_timeout value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateCacheSize(Ljava/lang/String;)V
    .locals 5

    const v0, 0x7fffffff

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    if-ltz v0, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SQLitePragma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalied cache size (under 10) \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\', ignore sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setCacheSize(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get cache_size value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateCaseSensitveLike(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setCaseSensitiveLikeEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SQLitePragma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get case_sensitive_like value from this sql : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateJournalMode(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get journal_mode value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v1, "wal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableWriteAheadLogging failed from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method
