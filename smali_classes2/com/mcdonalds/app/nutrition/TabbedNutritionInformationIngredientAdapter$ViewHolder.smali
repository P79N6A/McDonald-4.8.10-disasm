.class public Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TabbedNutritionInformationIngredientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public additionalAllergens:Landroid/widget/TextView;

.field public allergens:Landroid/widget/TextView;

.field public description:Landroid/widget/TextView;

.field public itemView:Landroid/view/View;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 98
    const v0, 0x7f11042b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f11042c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f11042d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->allergens:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f11042e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->additionalAllergens:Landroid/widget/TextView;

    .line 102
    return-void
.end method
