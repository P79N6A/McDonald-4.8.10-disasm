.class public Lcom/mcdonalds/app/util/OrderProductUtils;
.super Ljava/lang/Object;
.source "OrderProductUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/List;
    .locals 6
    .param p0, "input"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.OrderProductUtils"

    const-string v3, "getAllChoices"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/OrderProductUtils;->getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V

    .line 62
    return-object v0
.end method

.method private static getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V
    .locals 7
    .param p0, "input"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.OrderProductUtils"

    const-string v4, "getAllChoices"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 71
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    instance-of v3, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v3, :cond_0

    .line 72
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 73
    .local v1, "solution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v1, p1}, Lcom/mcdonalds/app/util/OrderProductUtils;->getAllChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V

    goto :goto_0

    .line 80
    .end local v1    # "solution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return-void
.end method

.method public static getCustomizationsString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 5
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.OrderProductUtils"

    const-string v2, "getCustomizationsString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.hideProductCustomizationButton"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.hideProductCustomizationButton"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationsString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getIngredientChoiceString(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.util.OrderProductUtils"

    const-string v5, "getIngredientChoiceString"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 42
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 44
    .local v2, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v2    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ", "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ", "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_2
    return-object v0
.end method

.method public static getTotalEnergyUnit(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 6
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.OrderProductUtils"

    const-string v3, "getTotalEnergyUnit"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergyUnit()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "unit":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 25
    .end local v0    # "unit":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 20
    .restart local v0    # "unit":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.energyUnit"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.energyUnit"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.secondaryEnergyUnit"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.secondaryEnergyUnit"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
