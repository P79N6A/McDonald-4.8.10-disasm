.class Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;
.super Ljava/lang/Object;
.source "FavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

.field final synthetic val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$1;->val$orderProduct:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v0, p1, v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->access$000(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 122
    return-void
.end method
