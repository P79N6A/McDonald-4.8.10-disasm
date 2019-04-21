.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;
.super Ljava/lang/Object;
.source "MWAliasValue.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;


# instance fields
.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Alias"
    .end annotation
.end field

.field public aliasType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AliasTypeCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createListFromAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/util/List;
    .locals 5
    .param p0, "addressElement"    # Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "addressAliasValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 54
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v2, "mwAliasValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->fromAddressAliasValue(Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v2
.end method

.method public static fromAddressAliasValue(Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;
    .locals 3
    .param p0, "addressAliasValue"    # Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    .prologue
    .line 42
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;-><init>()V

    .line 44
    .local v0, "ret":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAliasType()Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->aliasType:I

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->alias:Ljava/lang/String;

    .line 47
    return-object v0
.end method

.method public static toAddressAliasValue(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;)Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    .locals 3
    .param p0, "mwAliasValue"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;

    .prologue
    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;-><init>()V

    .line 24
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->aliasType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAliasType(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;)V

    .line 25
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public static toAddressAliasValueList(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;)Ljava/util/List;
    .locals 4
    .param p0, "mwAddressElement"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->value:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 33
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .local v0, "addressAliasValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 35
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAddressElement;->value:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->toAddressAliasValue(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;)Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getQueryProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "AliasTypeCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->aliasType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v0, "Alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAliasValue;->alias:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryPropertyNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AliasTypeCode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Alias"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
