.class public Lcom/android/settings/datausage/DataUsageSummaryLegacy;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummaryLegacy.java"

# interfaces
.implements Lcom/android/settings/datausage/DataUsageEditController;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mLimitPreference:Landroid/support/v7/preference/Preference;

.field private mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSummaryPreference:Lcom/android/settings/SummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private addMobileSection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    nop

    const v0, 0x7f150036

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mobile_category"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 17

    const/high16 v0, 0x3fc80000    # 1.5625f

    const v1, 0x3f23d70a    # 0.64f

    const/16 v2, 0x12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    move-wide/from16 v5, p2

    invoke-static {v3, v5, v6, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const/high16 v9, 0x3fc80000    # 1.5625f

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/SpannableString;

    const v9, 0x1040357

    move-object/from16 v12, p0

    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v13, "%1$s"

    const-string v14, "^1"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "%2$s"

    const-string v14, "^2"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v7, v4, v11

    iget-object v9, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v9, v4, v13

    invoke-static {v8, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v14, p1

    invoke-direct {v9, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/style/RelativeSizeSpan;

    const v13, 0x3f23d70a    # 0.64f

    invoke-direct {v15, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v13

    invoke-virtual {v9, v15, v11, v13, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v13

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    return-object v10
.end method

.method private updateState()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget v7, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageTemplate:I

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v7, v8, v9}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v7

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-object v9, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/android/settings/SummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    cmp-long v2, v7, v5

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-static {v1, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/android/settings/SummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-wide v9, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v9, v9

    long-to-float v10, v7

    div-float/2addr v9, v10

    const/4 v10, 0x0

    iget-wide v11, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v11, v7, v11

    long-to-float v11, v11

    long-to-float v12, v7

    div-float/2addr v11, v12

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_4

    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_2

    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_4

    :cond_2
    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-wide v9, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v9, v5

    if-gtz v5, :cond_3

    const v5, 0x7f1204a6

    goto :goto_1

    :cond_3
    const v5, 0x7f1204a5

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    nop

    :goto_3
    move v3, v4

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b25

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUsageSummaryLegacy"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150038

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v3, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v3, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v3}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v0, v3}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v4, "status_header"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SummaryPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "restrict_background_legacy"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->removePreference(Ljava/lang/String;)Z

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    const-string v6, "limit_summary"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v6, v6, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(I)V

    :cond_4
    nop

    :goto_0
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_5

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v4, v5}, Lcom/android/settings/SummaryPreference;->setSelectable(Z)V

    goto :goto_2

    :cond_7
    const-string v6, "limit_summary"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->removePreference(Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/SummaryPreference;->setSelectable(Z)V

    :goto_2
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addWifiSection()V

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addEthernetSection()V

    :cond_9
    if-eqz v2, :cond_a

    const v6, 0x7f1204a2

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    const v6, 0x7f121dd9

    goto :goto_3

    :cond_b
    const v6, 0x7f120859

    :goto_3
    iput v6, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageTemplate:I

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a020a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const-string/jumbo v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->updateState()V

    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->updateState()V

    return-void
.end method
