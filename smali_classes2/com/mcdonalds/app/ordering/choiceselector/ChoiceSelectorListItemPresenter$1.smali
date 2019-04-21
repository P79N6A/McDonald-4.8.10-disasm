.class Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;
.super Ljava/lang/Object;
.source "ChoiceSelectorListItemPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->checkForNutritionInfo()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->access$002(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;->this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->setShowInfoButton(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
