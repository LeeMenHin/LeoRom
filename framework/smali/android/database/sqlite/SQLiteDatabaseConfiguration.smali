.class public final Landroid/database/sqlite/SQLiteDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SQLiteDatabaseConfiguration.java"


# static fields
.field private static final DEFAULT_BUSY_TIMEOUT:J = 0x9c4L

.field private static final DEFAULT_CACHE_SIZE:I = 0x7d0

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field public static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"


# instance fields
.field public automaticIndexEnabled:Z

.field public busyTimeout:J

.field public cacheSize:I

.field public caseSensitiveLikeEnabled:Z

.field public final customFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteCustomFunction;",
            ">;"
        }
    .end annotation
.end field

.field public foreignKeyConstraintsEnabled:Z

.field public idleConnectionTimeoutMs:J

.field public journalMode:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public lookasideSlotCount:I

.field public lookasideSlotSize:I

.field public maxSqlCacheSize:I

.field public openFlags:I

.field public final path:Ljava/lang/String;

.field public final sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

.field public syncMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput p2, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/16 v0, 0x19

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->sharedConfig:Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseSharedConfiguration;->useWalModeByDefault:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isInMemoryDb()Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string v1, ":memory:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLookasideConfigSet()Z
    .locals 1

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    iget-wide v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->idleConnectionTimeoutMs:J

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    iget-wide v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other configuration must refer to the same database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method useCompatibilityWal()Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->journalMode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->syncMode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
