.class final Lcom/mcdonalds/app/ordering/ProductUtils$1;
.super Ljava/lang/Object;
.source "ProductUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ProductUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Ingredient;)I
    .locals 3
    .param p1, "lhs"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "rhs"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDisplayOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDisplayOrder()I

    move-result v1

    sub-int/2addr v0, v1

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

    .line 41
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/ProductUtils$1;->compare(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Ingredient;)I

    move-result v0

    return v0
.end method
