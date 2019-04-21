.class Lcom/mcdonalds/sdk/modules/models/Product$2;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/Product;->getHighlightedNutrientsSortedById()Ljava/util/List;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/Product;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product$2;->this$0:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/Nutrient;Lcom/mcdonalds/sdk/modules/models/Nutrient;)I
    .locals 2
    .param p1, "lhs"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .param p2, "rhs"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 577
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/Product$2;->compare(Lcom/mcdonalds/sdk/modules/models/Nutrient;Lcom/mcdonalds/sdk/modules/models/Nutrient;)I

    move-result v0

    return v0
.end method
