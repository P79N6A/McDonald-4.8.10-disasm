.class public Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
.super Ljava/lang/Object;
.source "MWGetRecipeForIdResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item"
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
.method public getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->mItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    return-object v0
.end method

.method public setItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;)V
    .locals 0
    .param p1, "item"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->mItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWGetRecipeForIdResponse{mItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->mItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
