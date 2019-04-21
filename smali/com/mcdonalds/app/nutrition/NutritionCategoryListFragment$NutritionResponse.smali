.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;
.super Ljava/lang/Object;
.source "NutritionCategoryListFragment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NutritionResponse"
.end annotation


# instance fields
.field public nutritions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nutrition"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$Nutri;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;->nutritions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$Nutri;

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$Nutri;->url:Ljava/lang/String;

    return-object v0
.end method
