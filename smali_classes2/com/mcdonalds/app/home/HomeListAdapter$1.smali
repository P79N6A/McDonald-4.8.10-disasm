.class Lcom/mcdonalds/app/home/HomeListAdapter$1;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;->getAppliedOfferView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$1;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$1;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$100(Lcom/mcdonalds/app/home/HomeListAdapter;)Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$1;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$000(Lcom/mcdonalds/app/home/HomeListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;->onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 327
    return-void
.end method
