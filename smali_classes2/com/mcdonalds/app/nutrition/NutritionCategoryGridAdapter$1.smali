.class Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;
.super Ljava/lang/Object;
.source "NutritionCategoryGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

.field final synthetic val$nutritionRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;->val$nutritionRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$1;->val$nutritionRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;->onItemClick(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 118
    :cond_0
    return-void
.end method
