.class public final Landroid/provider/DocumentsContract;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DocumentsContract$Path;,
        Landroid/provider/DocumentsContract$Root;,
        Landroid/provider/DocumentsContract$Document;
    }
.end annotation


# static fields
.field public static final ACTION_DOCUMENT_ROOT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_ROOT_SETTINGS"

.field public static final ACTION_DOCUMENT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_SETTINGS"

.field public static final ACTION_MANAGE_DOCUMENT:Ljava/lang/String; = "android.provider.action.MANAGE_DOCUMENT"

.field public static final EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_EXCLUDE_SELF:Ljava/lang/String; = "android.provider.extra.EXCLUDE_SELF"

.field public static final EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final EXTRA_INITIAL_URI:Ljava/lang/String; = "android.provider.extra.INITIAL_URI"

.field public static final EXTRA_LOADING:Ljava/lang/String; = "loading"

.field public static final EXTRA_OPTIONS:Ljava/lang/String; = "options"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "android.provider.extra.ORIENTATION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_PARENT_URI:Ljava/lang/String; = "parentUri"

.field public static final EXTRA_PROMPT:Ljava/lang/String; = "android.provider.extra.PROMPT"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.content.extra.SHOW_ADVANCED"

.field public static final EXTRA_TARGET_URI:Ljava/lang/String; = "android.content.extra.TARGET_URI"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final METADATA_EXIF:Ljava/lang/String; = "android:documentExif"

.field public static final METADATA_TYPES:Ljava/lang/String; = "android:documentMetadataType"

.field public static final METHOD_COPY_DOCUMENT:Ljava/lang/String; = "android:copyDocument"

.field public static final METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final METHOD_CREATE_WEB_LINK_INTENT:Ljava/lang/String; = "android:createWebLinkIntent"

.field public static final METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field public static final METHOD_EJECT_ROOT:Ljava/lang/String; = "android:ejectRoot"

.field public static final METHOD_FIND_DOCUMENT_PATH:Ljava/lang/String; = "android:findDocumentPath"

.field public static final METHOD_GET_DOCUMENT_METADATA:Ljava/lang/String; = "android:getDocumentMetadata"

.field public static final METHOD_IS_CHILD_DOCUMENT:Ljava/lang/String; = "android:isChildDocument"

.field public static final METHOD_MOVE_DOCUMENT:Ljava/lang/String; = "android:moveDocument"

.field public static final METHOD_REMOVE_DOCUMENT:Ljava/lang/String; = "android:removeDocument"

.field public static final METHOD_RENAME_DOCUMENT:Ljava/lang/String; = "android:renameDocument"

.field public static final PACKAGE_DOCUMENTS_UI:Ljava/lang/String; = "com.android.documentsui"

.field private static final PARAM_MANAGE:Ljava/lang/String; = "manage"

.field private static final PARAM_QUERY:Ljava/lang/String; = "query"

.field private static final PATH_CHILDREN:Ljava/lang/String; = "children"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_RECENT:Ljava/lang/String; = "recent"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final PATH_SEARCH:Ljava/lang/String; = "search"

.field public static final PATH_TREE:Ljava/lang/String; = "tree"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "DocumentsContract"

.field private static final THUMBNAIL_BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/provider/DocumentsContract;->THUMBNAIL_BUFFER_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "children"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "children"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildHomeUri()Landroid/net/Uri;
    .locals 2

    const-string v0, "com.android.externalstorage.documents"

    const-string/jumbo v1, "home"

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRecentDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchDocumentsUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static copyDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android.content.extra.TARGET_URI"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:copyDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    return-object v2
.end method

.method public static copyDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->copyDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to copy document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "mime_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:createDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    return-object v2
.end method

.method public static createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to create document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static createWebLinkIntent(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    const-string/jumbo v1, "options"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "android:createWebLinkIntent"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    return-object v2
.end method

.method public static createWebLinkIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->createWebLinkIntent(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/IntentSender;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to create a web link intent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:deleteDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to delete document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static ejectRoot(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:ejectRoot"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static ejectRoot(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->ejectRoot(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static findDocumentPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/provider/DocumentsContract$Path;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:findDocumentPath"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/provider/DocumentsContract$Path;

    return-object v2
.end method

.method public static findDocumentPath(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/provider/DocumentsContract$Path;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a tree uri."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->findDocumentPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/provider/DocumentsContract$Path;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to find path"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const-string v1, "document"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    const-string/jumbo v1, "tree"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "document"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDocumentMetadata(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:getDocumentMetadata"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Failed to get a response from getDocumentMetadata"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDocumentMetadata(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->getDocumentMetadata(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to get document metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    const-string v0, "android.content.extra.SIZE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_0
    const-string/jumbo v0, "image/*"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    :try_start_1
    invoke-virtual {v6, v7, v0, v2, v8}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v12, v4

    :try_start_2
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v9, v10, v11, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v25, v2

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sget v15, Landroid/provider/DocumentsContract;->THUMBNAIL_BUFFER_SIZE:I

    invoke-direct {v13, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v12, v13

    sget v13, Landroid/provider/DocumentsContract;->THUMBNAIL_BUFFER_SIZE:I

    invoke-virtual {v12, v13}, Ljava/io/BufferedInputStream;->mark(I)V

    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v13, v0

    const/4 v0, 0x1

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v12, :cond_0

    :try_start_4
    invoke-static {v12, v4, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_5
    invoke-static {v9, v4, v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_1
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v14

    move v14, v0

    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v15

    move v15, v0

    const/4 v4, 0x0

    iput-boolean v4, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v12, :cond_1

    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v4, 0x0

    invoke-static {v12, v4, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_1
    :try_start_7
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v9, v10, v11, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_3
    const/4 v4, 0x0

    invoke-static {v9, v4, v13}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :goto_4
    :try_start_9
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_2

    :try_start_a
    const-string v5, "android.provider.extra.ORIENTATION"

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v25, v2

    :goto_5
    move-object v5, v4

    goto :goto_9

    :cond_2
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v24, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v25, v2

    int-to-float v2, v1

    move/from16 v26, v1

    :try_start_c
    div-int/lit8 v1, v5, 0x2

    int-to-float v1, v1

    div-int/lit8 v6, v16, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v2, v1, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move/from16 v20, v5

    move/from16 v21, v16

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v23}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v4, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_3
    move-object/from16 v25, v2

    :goto_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-object v4

    :catchall_3
    move-exception v0

    move-object/from16 v25, v2

    move-object v5, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    :goto_8
    move-object/from16 v25, v2

    :goto_9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    if-nez v2, :cond_0

    const-string v2, "DocumentsContract"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load thumbnail for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getRootId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "root"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "tree"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isChildDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android.content.extra.TARGET_URI"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:isChildDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Response did not include result field.."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Failed to get a reponse from isChildDocument query."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isContentUri(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "document"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "tree"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "document"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private static isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isManageMode(Landroid/net/Uri;)Z
    .locals 2

    const-string/jumbo v0, "manage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRootUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "root"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isTreeUri(Landroid/net/Uri;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const-string/jumbo v1, "tree"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static moveDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "parentUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android.content.extra.TARGET_URI"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:moveDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    return-object v2
.end method

.method public static moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to move document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/high16 v0, 0x10000000

    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    const-string v2, "android.provider.extra.ORIENTATION"

    const/16 v3, 0x10e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    const-string v2, "android.provider.extra.ORIENTATION"

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    const-string v2, "android.provider.extra.ORIENTATION"

    const/16 v3, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v1

    move-object v10, v1

    if-eqz v10, :cond_3

    new-instance v11, Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    aget-wide v5, v10, v1

    aget-wide v12, v10, v4

    move-object v1, v11

    move-object v2, v0

    move-wide v3, v5

    move-wide v5, v12

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v11

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v1

    move-object v1, v9

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    move-object v9, v1

    :goto_3
    new-instance v8, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v8

    move-object v2, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v8
.end method

.method public static removeDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "parentUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android:removeDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static removeDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->removeDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to remove document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:renameDocument"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    return-object v3
.end method

.method public static renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to rename document"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v2

    :goto_0
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method private static rethrowIfNecessary(Landroid/content/ContentResolver;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroid/os/ParcelableException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/ParcelableException;

    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public static setManageMode(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "manage"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
