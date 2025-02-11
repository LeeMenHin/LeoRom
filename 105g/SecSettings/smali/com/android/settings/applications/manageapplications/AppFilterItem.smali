.class public Lcom/android/settings/applications/manageapplications/AppFilterItem;
.super Ljava/lang/Object;
.source "AppFilterItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mFilterType:I

.field private final mTitle:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iput p2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iget v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
