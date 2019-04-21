.class Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;
.super Ljava/lang/Object;
.source "FavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->access$100(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/nutrition/AllFavoritesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    const-string v2, "favoriteOrders"

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->access$200(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->access$100(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
