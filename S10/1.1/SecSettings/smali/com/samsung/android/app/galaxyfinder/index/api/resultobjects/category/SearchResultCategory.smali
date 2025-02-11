.class public Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;
.super Ljava/lang/Object;
.source "SearchResultCategory.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/common/IResultItem;


# instance fields
.field private final VERSION:Ljava/lang/String;

.field private final jsonObject:Lorg/json/JSONObject;

.field private final resultItems:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.1.14"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->VERSION:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->resultItems:Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->setLabel(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->setTotalCount(I)V

    return-void
.end method

.method private setLabel(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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
.end method


# virtual methods
.method public addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->resultItems:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public getId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "category"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.1.14"

    return-object v0
.end method

.method public setTotalCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "totalCount"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
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
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "items"

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->resultItems:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchResultCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get JsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
