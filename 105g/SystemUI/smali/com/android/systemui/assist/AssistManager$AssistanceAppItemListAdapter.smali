.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistanceAppItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private mSelectedItem:I

.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistManager;->access$500(Lcom/android/systemui/assist/AssistManager;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    if-eqz v2, :cond_4

    const v3, 0x7f0a00fe

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    const v4, 0x7f0a0062

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0066

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v3, :cond_4

    iget v6, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    if-ne v6, p1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public setSelectedItem(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    return-void
.end method
