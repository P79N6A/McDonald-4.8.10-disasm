.class Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;
.super Ljava/lang/Object;
.source "MealAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->setupInfoButton(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

.field final synthetic val$recipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;->val$recipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

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

    .line 620
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;->this$0:Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$4;->val$recipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;->access$400(Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;Ljava/lang/String;)V

    .line 621
    return-void
.end method
