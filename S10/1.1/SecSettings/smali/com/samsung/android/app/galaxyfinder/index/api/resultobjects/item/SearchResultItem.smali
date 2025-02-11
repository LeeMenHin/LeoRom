.class public abstract Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/common/IResultItem;


# static fields
.field private static final RESERVED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RESULT_ITEM_VER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final jsonActions:Lorg/json/JSONArray;

.field private final jsonObject:Lorg/json/JSONObject;

.field private mId:J

.field private mViewAction:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string v1, "ObjectId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string v1, "ObjectType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string v1, "ObjectVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string v1, "ObjectViewActions"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(JLandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->TAG:Ljava/lang/String;

    const-string v0, "0.1.14"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESULT_ITEM_VER:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonActions:Lorg/json/JSONArray;

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mId:J

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;

    const-string v1, "_view"

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private isReservedKeyword(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mId:J

    return-wide v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.1.14"

    return-object v0
.end method

.method final put(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final put(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->isReservedKeyword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The name is reserved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ObjectId"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ObjectType"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ObjectVersion"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ObjectViewActions"

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "ObjectActions"

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonActions:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get JsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
