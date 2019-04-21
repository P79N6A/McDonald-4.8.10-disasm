.class public Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWRelationTypeDeserializer;
.super Ljava/lang/Object;
.source "MWRelationTypeDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final RELATED_ITEM:Ljava/lang/String; = "related_item"

.field public static final RELATED_ITEMS:Ljava/lang/String; = "related_items"

.field public static final RELATION_TYPE:Ljava/lang/String; = "relation_type"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
    .locals 16
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonDeserializationContext"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;-><init>()V

    .line 37
    .local v4, "depMenuItemRelationTypes":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "depMenuItemRelationTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;>;"
    new-instance v12, Lcom/google/gson/JsonArray;

    invoke-direct {v12}, Lcom/google/gson/JsonArray;-><init>()V

    .line 39
    .local v12, "relation_type":Lcom/google/gson/JsonArray;
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    const-string v14, "relation_type"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    const-string v14, "relation_type"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 41
    .local v11, "relationType":Lcom/google/gson/JsonObject;
    new-instance v12, Lcom/google/gson/JsonArray;

    .end local v12    # "relation_type":Lcom/google/gson/JsonArray;
    invoke-direct {v12}, Lcom/google/gson/JsonArray;-><init>()V

    .line 42
    .restart local v12    # "relation_type":Lcom/google/gson/JsonArray;
    invoke-virtual {v12, v11}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 47
    .end local v11    # "relationType":Lcom/google/gson/JsonObject;
    :goto_0
    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 48
    .local v5, "element":Lcom/google/gson/JsonElement;
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;-><init>()V

    .line 49
    .local v2, "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    const-string v15, "type"

    invoke-virtual {v14, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    const-string v15, "related_items"

    invoke-virtual {v14, v15}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 53
    .local v10, "relatedItems":Lcom/google/gson/JsonObject;
    new-instance v9, Lcom/google/gson/JsonArray;

    invoke-direct {v9}, Lcom/google/gson/JsonArray;-><init>()V

    .line 54
    .local v9, "relatedItem":Lcom/google/gson/JsonArray;
    const-string v14, "related_item"

    invoke-virtual {v10, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 55
    const-string v14, "related_item"

    invoke-virtual {v10, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 61
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "depMenuItemRelatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 63
    .local v7, "jsonElement1":Lcom/google/gson/JsonElement;
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;-><init>()V

    .line 64
    .local v0, "depMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 65
    .local v8, "object":Lcom/google/gson/JsonObject;
    const-string v15, "is_default"

    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    .line 66
    const-string v15, "display_order"

    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v15

    iput v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->displayOrder:I

    .line 67
    const-string v15, "id"

    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->id:Ljava/lang/String;

    .line 68
    const-string v15, "label"

    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->label:Ljava/lang/String;

    .line 69
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 45
    .end local v0    # "depMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    .end local v1    # "depMenuItemRelatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    .end local v2    # "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .end local v5    # "element":Lcom/google/gson/JsonElement;
    .end local v7    # "jsonElement1":Lcom/google/gson/JsonElement;
    .end local v8    # "object":Lcom/google/gson/JsonObject;
    .end local v9    # "relatedItem":Lcom/google/gson/JsonArray;
    .end local v10    # "relatedItems":Lcom/google/gson/JsonObject;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v13

    const-string v14, "relation_type"

    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v12

    goto/16 :goto_0

    .line 58
    .restart local v2    # "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .restart local v5    # "element":Lcom/google/gson/JsonElement;
    .restart local v9    # "relatedItem":Lcom/google/gson/JsonArray;
    .restart local v10    # "relatedItems":Lcom/google/gson/JsonObject;
    :cond_1
    const-string v14, "related_item"

    invoke-virtual {v10, v14}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v9

    goto :goto_2

    .line 72
    .restart local v1    # "depMenuItemRelatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    :cond_2
    new-instance v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;-><init>()V

    .line 73
    .local v6, "itemRelatedItems":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
    iput-object v1, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;->menuItemRelatedItemList:Ljava/util/List;

    .line 75
    iput-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    .line 76
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 79
    .end local v1    # "depMenuItemRelatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    .end local v2    # "depMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .end local v5    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "itemRelatedItems":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
    .end local v9    # "relatedItem":Lcom/google/gson/JsonArray;
    .end local v10    # "relatedItems":Lcom/google/gson/JsonObject;
    :cond_3
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->setItemRelationType(Ljava/util/List;)V

    .line 80
    return-object v4
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWRelationTypeDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    return-object v0
.end method
