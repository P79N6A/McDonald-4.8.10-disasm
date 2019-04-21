.class public interface abstract Lcom/mcdonalds/sdk/connectors/NutritionConnector;
.super Ljava/lang/Object;
.source "NutritionConnector.java"


# virtual methods
.method public abstract getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBaseImagePath(Ljava/lang/String;)V
.end method
