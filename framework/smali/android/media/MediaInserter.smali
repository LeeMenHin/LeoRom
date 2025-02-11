.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "mediascan"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private flushAllPriority()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    invoke-direct {p0, p1, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public flushAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    return-void
.end method
