.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
.super Ljava/lang/Object;
.source "MWRecipeComponents.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public recipeComponentList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "component"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;",
            ">;"
        }
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
