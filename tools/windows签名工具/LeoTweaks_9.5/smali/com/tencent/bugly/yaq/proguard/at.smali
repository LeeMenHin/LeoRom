.class public final Lcom/tencent/bugly/yaq/proguard/at;
.super Lcom/tencent/bugly/yaq/proguard/j;
.source "BUGLY"


# static fields
.field private static i:[B

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:B

.field public b:I

.field public c:[B

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/yaq/proguard/at;->i:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/yaq/proguard/at;->j:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/yaq/proguard/at;->j:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/bugly/yaq/proguard/j;-><init>()V

    iput-byte v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->a:B

    iput v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->b:I

    iput-object v2, p0, Lcom/tencent/bugly/yaq/proguard/at;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/yaq/proguard/at;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/yaq/proguard/h;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->a:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/bugly/yaq/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->a:B

    iget v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->b:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/bugly/yaq/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->b:I

    sget-object v0, Lcom/tencent/bugly/yaq/proguard/at;->i:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/yaq/proguard/h;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->c:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/yaq/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->d:Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/yaq/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->e:J

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/yaq/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/yaq/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->g:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/yaq/proguard/at;->j:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/yaq/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->h:Ljava/util/Map;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/yaq/proguard/i;)V
    .locals 3

    iget-byte v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(BI)V

    iget v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a([BI)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(Ljava/lang/String;I)V

    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/yaq/proguard/i;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/yaq/proguard/at;->h:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/yaq/proguard/i;->a(Ljava/util/Map;I)V

    :cond_4
    return-void
.end method
