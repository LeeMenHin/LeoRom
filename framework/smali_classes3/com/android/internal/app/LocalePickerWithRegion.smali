.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation


# static fields
.field private static final PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"


# instance fields
.field private mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private mFirstVisiblePosition:I

.field private mIsLight:Z

.field private mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private mPreviousSearch:Ljava/lang/CharSequence;

.field private mPreviousSearchHadFocus:Z

.field private mPreviousSecSuggestionCount:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mSubheaderColor:I

.field private mTopDistance:I

.field private mTranslatedOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    return-void
.end method

.method private static createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 3

    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 2

    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    return-object v0
.end method

.method private returnToParentFrame()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "localeListEditor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method private setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .locals 5

    iput-object p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iput-boolean p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setRetainInstance(Z)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p4, :cond_0

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_2

    invoke-static {p1, v1, p3, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v0, :cond_3

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p2, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    :cond_3
    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x111005c

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10601c9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    iput-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10601c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    const/4 v0, 0x0

    iput-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    :goto_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v2, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setSubheaderColor(I)V

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setStrokeRoundedCorner(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->semSetBottomColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSubheaderColor:I

    invoke-virtual {v2, v5, v6}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    iget-boolean v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsLight:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->semSetGoToTopEnabled(ZI)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/LocalePickerWithRegion;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-direct {v3, v4, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;Z)V

    iput-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    new-instance v3, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    new-instance v4, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v4, v2, v1, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;ZZ)V

    move-object v0, v4

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getSecSuggestionCount()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_1

    const/high16 v0, 0x1140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x1020388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1020389

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x10404a5

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v2, 0x10404a4

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getSecSuggestionCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setSecSuggestionCount(I)V

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showAllItems()V

    return v2

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    invoke-virtual {v1, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setSecSuggestionCount(I)V

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSamsungSuggestedItems()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1020388
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_1
    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const v0, 0x1020388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1020389

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSecSuggestionCount:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showAllItems()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getShowAll()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v0, :cond_6

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10404a6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method
