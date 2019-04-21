.class Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NutritionCategoryGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mContainer:Landroid/view/View;

.field mImageView:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mContainer:Landroid/view/View;

    .line 150
    const v0, 0x7f110063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f110136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 152
    return-void
.end method
