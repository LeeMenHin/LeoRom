.class public Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemUriListClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemUriListClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private setClipData()V
    .locals 6

    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Landroid/content/ClipData$Item;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "SemUriListClipData"

    const-string/jumbo v1, "multiple uri equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v1, v4

    nop

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    :goto_0
    return v2
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUriList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriListInternal(Ljava/util/ArrayList;)Z

    move-result v0

    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public setUriList(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    nop

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setUriListInternal(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    nop

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemUriListClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "SemUriListClipData"

    const-string v1, "Multiple Uri write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
