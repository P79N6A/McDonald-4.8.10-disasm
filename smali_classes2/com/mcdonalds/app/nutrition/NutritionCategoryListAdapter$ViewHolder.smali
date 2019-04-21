.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NutritionCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const v0, 0x7f110487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f110488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListAdapter$ViewHolder"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListAdapter$ViewHolder"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object v0
.end method
