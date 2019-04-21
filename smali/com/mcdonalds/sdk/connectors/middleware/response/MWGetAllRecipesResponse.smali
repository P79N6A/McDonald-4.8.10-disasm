.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
.super Ljava/lang/Object;
.source "MWGetAllRecipesResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mFullMenu:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_menu"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullMenu()Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->mFullMenu:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    return-object v0
.end method

.method public hasFullMenuItemList()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->getFullMenu()Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->getFullMenu()Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    move-result-object v0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;->fullMenuItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->getFullMenu()Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    move-result-object v0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;->fullMenuItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;->menuItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWGetAllRecipesResponse{mFullMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->mFullMenu:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
