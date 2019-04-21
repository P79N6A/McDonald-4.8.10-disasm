.class Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllCategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mResource:I

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "recipeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->this$0:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment;

    .line 132
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 133
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mContext:Landroid/content/Context;

    .line 134
    iput p3, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mResource:I

    .line 135
    iput-object p4, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

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

    .line 120
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->getItem(I)Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 160
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 163
    new-instance v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;)V

    .line 165
    .local v1, "viewHolder":Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;
    const v2, 0x7f11013f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    .line 166
    const v2, 0x7f110140

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;->mCategoryDescription:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    const-class v2, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;

    invoke-static {p2, v2, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 177
    iget-object v3, v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;->mCategoryDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Category;->getCategoryDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 173
    .end local v1    # "viewHolder":Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    const-string v0, "setCategoryList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;->mCategoryList:Ljava/util/List;

    .line 140
    return-void
.end method
