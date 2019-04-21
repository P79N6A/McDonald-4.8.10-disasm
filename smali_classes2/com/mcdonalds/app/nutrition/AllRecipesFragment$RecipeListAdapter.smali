.class Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllRecipesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/AllRecipesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I

.field private mTextViewResourceId:I

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllRecipesFragment;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/AllRecipesFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    .line 140
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 141
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mContext:Landroid/content/Context;

    .line 142
    iput p3, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mResource:I

    .line 143
    iput p4, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mTextViewResourceId:I

    .line 144
    iput-object p5, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mProductList:Ljava/util/List;

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mProductList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->getItem(I)Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 165
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mResource:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "rowView":Landroid/view/View;
    const-class v3, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 167
    iget v3, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mTextViewResourceId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mProductList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {v1, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v1
.end method

.method public setProductList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const-string v0, "setProductList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->mProductList:Ljava/util/List;

    .line 149
    return-void
.end method
