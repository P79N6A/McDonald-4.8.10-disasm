.class Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;
.super Ljava/lang/Object;
.source "StoreDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "onClick"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$002(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;Z)Z

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$200(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 259
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$100(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$500(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/PagerItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$400(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/PagerItemListener;->eatHereClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$600(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->access$700(Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    return-void
.end method
