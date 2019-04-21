.class Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StoreLocatorFiltersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureFilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;)V
    .locals 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .line 185
    invoke-virtual {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040196

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 186
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;

    .line 192
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 193
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040196

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 195
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const-string v3, "CheckBoxItemPressed"

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    .line 197
    const v3, 0x7f1100dc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 199
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorFiltersFragment$FeatureFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "filterName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2
.end method
