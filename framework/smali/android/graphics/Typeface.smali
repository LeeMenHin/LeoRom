.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final EMOJI_OVERLAY_PATH:Ljava/lang/String; = "/data/system/emojioverlay/"

.field private static final EMOJI_OVERLAY_VERSION_FILE:Ljava/lang/String; = "em.ver"

.field private static final EMPTY_AXES:[I

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final FlipFontAppList:[Ljava/lang/String;

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MAX_WEIGHT:I = 0x3e8

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final SAMSUNG_COLOR_EMOJI:Ljava/lang/String; = "SamsungColorEmoji.ttf"

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static final STYLE_ITALIC:I = 0x1

.field public static final STYLE_MASK:I = 0x3

.field private static final STYLE_NORMAL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field public static isFlipFontUsed:Z

.field private static ismtFontsDirectoryExists:Z

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaultFlipfont:Landroid/graphics/Typeface;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicCacheLock:Ljava/lang/Object;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sDynamicCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sStyledCacheLock:Ljava/lang/Object;

.field private static final sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStyledCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sWeightCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/graphics/Typeface;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v2, v0, [I

    sput-object v2, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    const-string v2, ""

    sput-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sput-boolean v0, Landroid/graphics/Typeface;->ismtFontsDirectoryExists:Z

    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    sput-boolean v0, Landroid/graphics/Typeface;->lastAppInList:Z

    sput-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    sput-object v2, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    sput-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    const-string v3, "android"

    const-string v4, "com.android.*"

    const-string v5, "com.cooliris.media"

    const-string/jumbo v6, "jp.co.omronsoft.openwnn"

    const-string v7, "com.monotypeimaging.*"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    const-string/jumbo v4, "sec-400"

    const-string/jumbo v5, "sans-serif-thin"

    const-string/jumbo v6, "sans-serif-light"

    const-string/jumbo v7, "sans-serif"

    const-string/jumbo v8, "sans-serif-condensed"

    const-string/jumbo v9, "sans-serif-medium"

    const-string/jumbo v10, "sans-serif-black"

    const-string/jumbo v11, "sec-roboto-light"

    const-string/jumbo v12, "roboto-num3L"

    const-string/jumbo v13, "roboto-num3R"

    const-string/jumbo v14, "sec-roboto-condensed"

    const-string/jumbo v15, "sec-roboto-condensed-light"

    const-string/jumbo v16, "samsungoneui-num500"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v5, "persist.sys.omc_etcpath"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/system/etc/"

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/fonts.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, v5

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/fonts.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/system/fonts/"

    invoke-static {v7, v8, v3, v4}, Landroid/graphics/Typeface;->buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_1
    const-string v6, "/system/etc/fonts.xml"

    const-string v7, "/system/fonts/"

    invoke-static {v6, v7, v3, v4}, Landroid/graphics/Typeface;->buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    :goto_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    sget-object v6, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v7, "sans-serif"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    invoke-static {v6}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string/jumbo v7, "sans-serif"

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v7, "serif"

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v7, "monospace"

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    sput-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Typeface;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v8, v7, v0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v7, v6

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    aput-object v6, v7, v0

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v7, v1

    sput-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Landroid/graphics/Typeface;->ismtFontsDirectoryExists:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/graphics/Typeface;->makeMtFontsDirectory()V

    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/Typeface;->ismtFontsDirectoryExists:Z

    :cond_0
    invoke-static {p1}, Landroid/graphics/Typeface;->isAppInFlipList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 13

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    sput-object v3, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    const-string v5, "/system/fonts/UIFont.ttf"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/system/fonts/UIFont.ttf"

    sput-object v5, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/fonts/UIBoldFont.ttf"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/system/fonts/UIBoldFont.ttf"

    sput-object v5, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    goto :goto_0

    :cond_2
    sput-boolean v1, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    goto :goto_0

    :cond_3
    sput-boolean v1, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DroidSans.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    sput-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v5, v3, Landroid/graphics/Typeface;->native_instance:J

    sget-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    iget-wide v11, v11, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v11, v10, Landroid/graphics/Typeface;->native_instance:J

    :goto_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v10, v7

    if-nez v3, :cond_7

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->sDefaultFlipfont:Landroid/graphics/Typeface;

    iget-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v7, v8, v4}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v10

    iput-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J

    :cond_7
    :goto_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v10

    iput v10, v3, Landroid/graphics/Typeface;->mStyle:I

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v5, v3, Landroid/graphics/Typeface;->native_instance:J

    sget-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    :try_start_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    iget-wide v11, v11, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v11, v10, Landroid/graphics/Typeface;->native_instance:J

    :goto_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v10, v3, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v10, v7

    if-nez v3, :cond_a

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    iget-wide v7, v7, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v7, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v7, v8, v1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v7

    iput-wide v7, v3, Landroid/graphics/Typeface;->native_instance:J

    :cond_a
    :goto_6
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v7, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v3, Landroid/graphics/Typeface;->mStyle:I

    const/16 v3, 0x2bc

    const/16 v7, 0x190

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v4

    iget-wide v5, v8, Landroid/graphics/Typeface;->native_instance:J

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v4

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v9, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v9, v10, v7, v4}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v9

    iput-wide v9, v8, Landroid/graphics/Typeface;->native_instance:J

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v4

    sget-object v9, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v9, v9, v4

    iget-wide v9, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v9

    iput v9, v8, Landroid/graphics/Typeface;->mStyle:I

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v1

    iget-wide v5, v8, Landroid/graphics/Typeface;->native_instance:J

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v1

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v9, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v9, v10, v3, v4}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v9

    iput-wide v9, v8, Landroid/graphics/Typeface;->native_instance:J

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v1

    sget-object v8, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v8, v1

    iget-wide v8, v8, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v8

    iput v8, v4, Landroid/graphics/Typeface;->mStyle:I

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v8

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v9, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v9, v10, v7, v1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/graphics/Typeface;->native_instance:J

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v8

    sget-object v9, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v8, v9, v8

    iget-wide v8, v8, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v8

    iput v8, v6, Landroid/graphics/Typeface;->mStyle:I

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v8, 0x3

    aget-object v6, v6, v8

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v8

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v9, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v9, v10, v3, v1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/graphics/Typeface;->native_instance:J

    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, v8

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v8

    iget-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v1, Landroid/graphics/Typeface;->mStyle:I

    sget-boolean v1, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v8, v1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    :cond_b
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/Typeface;)I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/Typeface;)I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static buildSystemFallback(Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v5

    move-object v11, v5

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v5

    array-length v13, v11

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_2

    aget-object v5, v11, v15

    move-object v10, v5

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v8

    move-object v14, v9

    move-object v9, v4

    move-object/from16 v16, v10

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    array-length v6, v11

    if-ge v5, v6, :cond_5

    aget-object v6, v11, v5

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v7, p1

    invoke-static {v6, v12, v4, v7}, Landroid/graphics/Typeface;->pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v7, p1

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/graphics/FontFamily;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/FontFamily;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v13, p3

    :try_start_1
    invoke-virtual {v13, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v14, v10

    new-array v14, v14, [J

    const/4 v15, 0x0

    :goto_6
    array-length v8, v10

    if-ge v15, v8, :cond_6

    aget-object v8, v10, v15

    iget-wide v7, v8, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v7, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    goto :goto_6

    :cond_6
    new-instance v7, Landroid/graphics/Typeface;

    const/4 v8, -0x1

    move-object/from16 v17, v9

    invoke-static {v14, v8, v8}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Landroid/graphics/Typeface;-><init>(J)V

    const/4 v8, 0x0

    :goto_7
    sget-object v9, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_8

    sget-object v9, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p1

    goto :goto_5

    :cond_9
    move-object/from16 v13, p3

    invoke-virtual {v3}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v6, :cond_d

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Typeface;

    move-object v10, v9

    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v14

    const/16 v15, 0x190

    if-eq v14, v15, :cond_c

    new-instance v15, Landroid/graphics/Typeface;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    iget-wide v3, v9, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v3, v4, v14}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v3

    invoke-direct {v15, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    move-object v10, v15

    const/4 v3, 0x0

    :goto_a
    sget-object v4, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v4

    sget-object v15, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    iput-boolean v4, v10, Landroid/graphics/Typeface;->isLikeDefault:Z

    goto :goto_b

    :cond_a
    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v8}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object/from16 v13, p3

    :goto_c
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML parse exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v13, p3

    :goto_d
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v13, p3

    :goto_e
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_7
    move-exception v0

    move-object/from16 v13, p3

    :goto_f
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v4, "Didn\'t create default family (most likely, non-Minikin build)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_10
    nop

    :goto_11
    return-void
.end method

.method private static checkVersion()Z
    .locals 18

    const-string v1, "/data/app_fonts/em.ver"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-static {}, Landroid/graphics/FontListParser;->getTtfVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    :cond_0
    const/4 v8, 0x1

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v9

    nop

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    sget-object v9, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v11, "File reader Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v9, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File read Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v9, v0

    sget-object v9, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v7

    :cond_2
    const-string v0, "\\."

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v9, "\\."

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v9, v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    aget-object v13, v9, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    aget-object v15, v9, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget-object v14, v0, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v12, v0, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v16, 0x3

    aget-object v8, v0, v16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-le v10, v14, :cond_3

    const/16 v16, 0x1

    return v16

    :cond_3
    const/16 v16, 0x1

    if-ne v10, v14, :cond_4

    if-le v11, v7, :cond_4

    return v16

    :cond_4
    if-ne v10, v14, :cond_5

    if-ne v11, v7, :cond_5

    if-le v13, v12, :cond_5

    return v16

    :cond_5
    if-ne v10, v14, :cond_6

    if-ne v11, v7, :cond_6

    if-ne v13, v12, :cond_6

    if-le v15, v8, :cond_6

    const/16 v16, 0x1

    return v16

    :cond_6
    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v7, 0x0

    return v7

    :goto_4
    nop

    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v8, v0

    sget-object v8, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File reader Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_7
    :goto_5
    throw v5
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 7

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :cond_1
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_2

    return-object p0

    :cond_2
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0

    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v2, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_4

    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_5

    monitor-exit v2

    return-object v4

    :cond_5
    :goto_0
    new-instance v4, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/graphics/Typeface;-><init>(J)V

    if-eqz p0, :cond_6

    iget v5, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v5, p1, :cond_6

    iget-boolean v5, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v5, v4, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_6
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v2, v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 3

    const-string/jumbo v0, "weight"

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    move-object/from16 v0, p4

    new-instance v1, Landroid/graphics/FontFamily;

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/FontFamily;-><init>([Ljava/lang/String;I)V

    const/4 v4, 0x0

    :goto_0
    move v10, v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/text/FontConfig$Font;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p5

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SamsungColorEmoji.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/graphics/Typeface;->checkVersion()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/graphics/Typeface;->getEmojiOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v14, v4

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    if-nez v4, :cond_2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v14}, Landroid/graphics/Typeface;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v0, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v15, v4

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v8

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v9

    move-object v4, v1

    move-object v5, v15

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating font "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v4, v10, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p1

    move-object/from16 v13, p5

    invoke-virtual {v1}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load Family: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_5
    move-object/from16 v6, p0

    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    const/4 v2, -0x1

    invoke-static {v0, v2, v2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v1
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 1

    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/FontFamily;

    if-nez v0, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/graphics/FontFamily;

    :cond_0
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v4, p0, v3

    iget-wide v4, v4, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    array-length v3, p0

    add-int/2addr v3, v2

    aget-object v4, v0, v2

    iget-wide v4, v4, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 4

    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v3, Landroid/graphics/FontFamily;

    invoke-direct {v3}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v0

    return-object v5

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/FontFamily;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v5, "sans-serif"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v2, v5

    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v5, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :cond_2
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 20

    move-object/from16 v1, p0

    instance-of v0, v1, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    move v5, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7, v4}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    return-object v6

    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, v1

    check-cast v3, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    new-instance v4, Landroid/graphics/FontFamily;

    invoke-direct {v4}, Landroid/graphics/FontFamily;-><init>()V

    invoke-virtual {v3}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v14

    array-length v15, v14

    move v13, v2

    :goto_3
    const/16 v16, 0x0

    if-ge v13, v15, :cond_6

    aget-object v12, v14, v13

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v10

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v11

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v17

    invoke-virtual {v12}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v18

    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v19, v12

    move/from16 v12, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v5

    if-nez v5, :cond_5

    return-object v16

    :cond_5
    add-int/lit8 v13, v17, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v5

    if-nez v5, :cond_7

    return-object v16

    :cond_7
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/FontFamily;

    aput-object v4, v5, v2

    move-object v2, v5

    const-string/jumbo v5, "sans-serif"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, v6}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v5

    sget-object v6, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :try_start_0
    const-string/jumbo v13, "sans-serif"

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v13}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v7, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    :goto_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 6

    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_0

    new-instance v3, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object v2, v3

    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    monitor-exit v1

    return-object v3

    :cond_1
    :goto_0
    new-instance v3, Landroid/graphics/Typeface;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getEmojiOverlayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/emojioverlay/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SamsungColorEmoji.ttf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "/data/system/emojioverlay/SamsungColorEmoji.ttf"

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "default"

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const-string v0, "default"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app_fonts/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    goto/16 :goto_5

    :pswitch_2
    const-string v2, ""

    const-string v0, "empty"

    const-string v2, "/data/app_fonts/0/sans.loc"

    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v7

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v7

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_2
    const-string v8, "default"

    move-object v5, v8

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v7

    :try_start_4
    const-string v8, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v8

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    move-object v0, v5

    goto :goto_4

    :goto_2
    nop

    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    nop

    :cond_2
    :goto_3
    throw v7

    :cond_3
    :goto_4
    nop

    :goto_5
    if-nez v0, :cond_4

    const-string v2, "default"

    return-object v2

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static loadAppList()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    return-object v0
.end method

.method private static makeMtFontsDirectory()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const-string v1, "Monotype"

    const-string/jumbo v2, "makeMtFontsDirectory()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_0
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v1

    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error mapping font file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static pushFamilyToFallback(Landroid/text/FontConfig$Family;Landroid/util/ArrayMap;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/FontFamily;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v1

    array-length v2, v1

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFallbackFor()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    invoke-virtual {v10, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v9

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v1

    :goto_2
    move-object v12, v1

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    nop

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    if-nez v13, :cond_4

    if-eqz v12, :cond_6

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    nop

    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v13

    move-object v3, v7

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface;->createFontFamily(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Landroid/graphics/FontFamily;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static semIsDefaultFontStyle()Z
    .locals 1

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 4

    new-instance v0, Landroid/graphics/Typeface;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->sDefaultFlipfont:Landroid/graphics/Typeface;

    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final isBold()Z
    .locals 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isItalic()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedAxes(I)Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
