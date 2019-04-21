.class Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem$1;
.super Ljava/lang/Object;
.source "MWRecipeItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;
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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "lhsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "rhsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "[^0-9]+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "lhsKey":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "[^0-9]+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "rhsKey":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    .local v1, "lhs":I
    :goto_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 74
    .local v3, "rhs":I
    :goto_1
    if-le v1, v3, :cond_0

    const/4 v5, 0x1

    :goto_2
    return v5

    .line 66
    .end local v1    # "lhs":I
    .end local v3    # "rhs":I
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v1, 0x7fffffff

    .restart local v1    # "lhs":I
    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const v3, 0x7fffffff

    .restart local v3    # "rhs":I
    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    if-ge v1, v3, :cond_1

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_2
.end method
