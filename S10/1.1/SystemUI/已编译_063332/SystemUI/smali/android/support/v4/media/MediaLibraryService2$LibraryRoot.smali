.class public final Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryRoot"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
