.class Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;
.super Ljava/lang/Object;
.source "NavigationBarDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "same item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mIsSelectable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$302(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$302(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z

    return-void
.end method
