.class Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;
.super Ljava/lang/Object;
.source "NutritionModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipesWithExternalIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

.field final synthetic val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

.field final synthetic val$externalId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;Lcom/mcdonalds/sdk/AsyncCounter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->this$0:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->val$externalId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 106
    if-nez p3, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find recipe for Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->val$externalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
