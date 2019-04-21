.class Lcom/mcdonalds/app/home/HomeListAdapter$5;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;->getOfferListRowView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

.field final synthetic val$item:Lcom/mcdonalds/app/widget/offers/ListRowModel;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;Lcom/mcdonalds/app/widget/offers/ListRowModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$5;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeListAdapter$5;->val$item:Lcom/mcdonalds/app/widget/offers/ListRowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$5;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->access$100(Lcom/mcdonalds/app/home/HomeListAdapter;)Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$5;->val$item:Lcom/mcdonalds/app/widget/offers/ListRowModel;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/offers/ListRowModel;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;->onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V

    .line 569
    return-void
.end method
