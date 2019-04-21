.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field final synthetic val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    if-nez p3, :cond_2

    .line 1233
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$502(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1234
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 1235
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "asapEtaDateString":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1241
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$900(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1242
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 1243
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setVisibility(I)V

    .line 1244
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 1248
    .local v1, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 1249
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 1250
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 1251
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    .line 1252
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 1253
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2, v6}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1302(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)Z

    .line 1255
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1256
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1402(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1260
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1500(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    .line 1261
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    .line 1267
    .end local v0    # "asapEtaDateString":Ljava/lang/String;
    .end local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1268
    return-void

    .line 1264
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
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

    .line 1227
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$21;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
