.class public Lcom/samsung/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private currentThemePath:Ljava/lang/String;

.field private downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v1, Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v1}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    iput v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v1, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    const/4 v1, 0x0

    nop

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v1, v3

    const-string v3, "com.monotype.android.font."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FontListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font package not found, just use default font, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/fonts/UIFont.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/system/fonts/UIFont.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    const-string v1, "/system/fonts/DroidSans.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 9

    const-string v0, ".xml"

    const-string v1, ".ttf"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v2, "shaonv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v2, "kaiti"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "miao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iput-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v2

    return-object v4

    :cond_2
    :goto_0
    move-object v2, v1

    const-string v5, ".ttf"

    const-string v6, "_prev.ttf"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v6

    nop

    return-object v3

    :catch_2
    move-exception v6

    :try_start_3
    iput-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    nop

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :catch_3
    move-exception v3

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    return-object v4

    :catch_4
    move-exception v3

    return-object v4
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 11

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    move-object v1, v2

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v3, v0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    move-object v3, v4

    nop

    move-object v4, v0

    :try_start_2
    const-string v5, "font"

    invoke-static {v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    move-object v4, v5

    nop

    const/4 v5, 0x0

    move-object v6, v0

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v7

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_0

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_1
    nop

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    :goto_2
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    :cond_1
    :goto_3
    :try_start_7
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-object v7

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v7

    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v7

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    :cond_4
    :goto_6
    throw v0

    :catch_7
    move-exception v7

    nop

    if-eqz v6, :cond_5

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catch_8
    move-exception v8

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_8

    :catch_9
    move-exception v8

    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_9

    :catch_a
    move-exception v8

    :cond_7
    :goto_9
    return-object v0

    :catch_b
    move-exception v7

    nop

    if-eqz v6, :cond_8

    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_a

    :catch_c
    move-exception v8

    :cond_8
    :goto_a
    if-eqz v5, :cond_9

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_b

    :catch_d
    move-exception v8

    :cond_9
    :goto_b
    if-eqz v3, :cond_a

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_c

    :catch_e
    move-exception v8

    :cond_a
    :goto_c
    return-object v0

    :catch_f
    move-exception v5

    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_d

    :catch_10
    move-exception v6

    :goto_d
    return-object v0

    :catch_11
    move-exception v4

    return-object v0

    :catch_12
    move-exception v2

    return-object v0
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12155b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput-object p0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeFontIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return v0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f121560

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f121568

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f12155f

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v1, "Chococooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v1, "Cooljazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v1, "Samsungsans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "SamsungSans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v1, "Applemint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12155e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v1, "Tinkerbell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v1, "Shaonv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121561

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121563

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121565

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v1, "UDRGothic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121564

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v1, "UDMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121566

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121567

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string v1, "Current theme\'s default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1213da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v1, "Foundation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121562

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    goto :goto_1

    :cond_11
    :goto_0
    const-string v0, "Samsung Sans"

    :cond_12
    :goto_1
    return-object v0
.end method

.method public getFontTypeface(I)Landroid/graphics/Typeface;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    const-string v3, "/system/fonts/DroidSans.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const v3, 0x7f0d028c

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0184

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method public isCurrentThemeFontInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return v0
.end method

.method public isCurrentThemeFontSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return v0
.end method

.method public loadTypefaces()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121575

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12155a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    sget-object v4, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v7, :cond_7

    :try_start_0
    const-string v7, "FontListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadTypefaces currentThemePath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object v7, v8

    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setInitDownloadFontAndThemeFont()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/app_fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sans.loc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    if-eqz v0, :cond_0

    const/16 v6, 0x23

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v5

    goto/16 :goto_5

    :catch_1
    move-exception v6

    :try_start_2
    const-string v7, "default"

    move-object v0, v7

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v6

    :try_start_4
    const-string v7, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v7

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    const-string v6, "Theme"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto :goto_2

    :cond_2
    iput-boolean v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v6, ""

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_3

    :cond_3
    iput-boolean v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    :goto_3
    iget-boolean v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    goto :goto_4

    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :goto_5
    nop

    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v6

    nop

    :cond_6
    :goto_6
    throw v5

    :cond_7
    :goto_7
    return-void
.end method

.method public setmIsFontPreviewActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    return-void
.end method
