.class Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment$1;
.super Ljava/lang/Object;
.source "NutritionInformationToolkitUIFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/Nutrient;Lcom/mcdonalds/sdk/modules/models/Nutrient;)I
    .locals 4
    .param p1, "lhs"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .param p2, "rhs"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment$1;->compare(Lcom/mcdonalds/sdk/modules/models/Nutrient;Lcom/mcdonalds/sdk/modules/models/Nutrient;)I

    move-result v0

    return v0
.end method
