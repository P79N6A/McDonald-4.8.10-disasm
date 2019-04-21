.class Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AllCategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mCategoryDescription:Landroid/widget/TextView;

.field mCategoryTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter$ViewHolder;->this$1:Lcom/mcdonalds/app/nutrition/AllCategoriesFragment$CategoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
