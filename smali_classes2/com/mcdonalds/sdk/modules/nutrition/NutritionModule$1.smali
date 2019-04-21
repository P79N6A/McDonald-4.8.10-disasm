.class Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;
.super Ljava/lang/Object;
.source "NutritionModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getFullRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->this$0:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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
    const/4 v1, 0x0

    .line 83
    if-nez p3, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->this$0:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
