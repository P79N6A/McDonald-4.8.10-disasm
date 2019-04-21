.class public interface abstract Lcom/mcdonalds/sdk/connectors/OrderingConnector;
.super Ljava/lang/Object;
.source "OrderingConnector.java"


# virtual methods
.method public abstract checkMobileOrderingSupport(Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract checkMobileOrderingSupportForStores(Ljava/util/List;Landroid/location/Location;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Landroid/location/Location;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract checkin(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract checkinKiosk(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract checkout(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract createNewOrder()Lcom/mcdonalds/sdk/modules/models/Order;
.end method

.method public abstract enteredStoreBoundaryForOrder(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWBoundaryCrossCheckInResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract foundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract getDeliveryStatus(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract getGeoFencingConfiguration(Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/GeoFencingConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMaxBasketQuantity()I
.end method

.method public abstract getMaxMinutesToAdvOrder()I
.end method

.method public abstract getMinMinutesToAdvOrder()I
.end method

.method public abstract getPaymentMethods(Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStoreFromList(Ljava/util/Date;ZDLjava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "ZD",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStoreOrderingCapabilties(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUpsellItems(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<[I>;)V"
        }
    .end annotation
.end method

.method public abstract lookupDeliveryCharge(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract orderUnAttendedCheckIn(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract totalize(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method

.method public abstract validate(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;)",
            "Lcom/mcdonalds/sdk/AsyncToken;"
        }
    .end annotation
.end method
