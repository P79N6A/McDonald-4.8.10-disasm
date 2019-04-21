.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;
.super Ljava/lang/Object;
.source "OrderMethodStorePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

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

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->access$000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->access$000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;->access$100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodStorePageFragment$DeliveryMethodStorePageFragmentListener;->onInfoButtonPressed(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 156
    :cond_0
    return-void
.end method
