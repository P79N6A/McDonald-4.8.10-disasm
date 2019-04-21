.class final Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;
.super Ljava/util/HashMap;
.source "DeprecatedConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    const-string v0, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenColumns.hundredG"

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenColumns.hundred_g"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "modules.ordering.cacheLatestOrderMinutes"

    const-string v1, "modules.Ordering.cacheLatestOrderMinutes"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "modules.delivery.sendToDeliveryWebsite"

    const-string v1, "modules.Delivery.sendToDeliveryWebsite"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "modules.delivery.externalAddressProvider"

    const-string v1, "modules.Delivery.externalAddressProvider"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "modules.customer.connector"

    const-string v1, "modules.Customer.connector"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "modules.storeLocator.connector"

    const-string v1, "modules.StoreLocator.connector"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "modules.delivery"

    const-string v1, "modules.Delivery"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "modules.ordering.orderTotalHaveTax"

    const-string v1, "modules.Ordering.orderTotalHaveTax"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "modules.ordering.requestTaxInvoice"

    const-string v1, "modules.Ordering.requestTaxInvoice"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "modules.delivery.deliveryUrls"

    const-string v1, "modules.Delivery.deliveryUrls"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "modules.ordering.hideOrderTotal"

    const-string v1, "modules.Ordering.hideOrderTotal"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "modules.ordering.mainPods"

    const-string v1, "modules.Ordering.mainPods"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "modules.customer.pushNotificationTrackingBaseURL"

    const-string v1, "modules.Customer.pushNotificationTrackingBaseURL"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "modules.offers.imageHost"

    const-string v1, "modules.Offers.imageHost"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "modules.storeLocator.defaultSearchRadius"

    const-string v1, "modules.StoreLocator.defaultSearchRadius"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "modules.storeLocator.disablePreferenceNotificationOnCurrentStoreUpdate"

    const-string v1, "modules.StoreLocator.disablePreferenceNotificationOnCurrentStoreUpdate"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "modules.nutritionInfo.connector"

    const-string v1, "modules.Nutrition.connector"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "modules.ordering.personal"

    const-string v1, "modules.Ordering.personal"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "modules.ordering.orderRemark"

    const-string v1, "modules.Ordering.orderRemark"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "modules.ordering.invoiceRequested"

    const-string v1, "modules.Ordering.invoiceRequested"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "modules.ordering.invoiceTitle"

    const-string v1, "modules.Ordering.invoiceTitle"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "modules.offers.100PercentOfferConsideredZeroPriceOffer"

    const-string v1, "modules.Offers.100PercentOfferConsideredZeroPriceOffer"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "modules.ordering.shouldAddTaxToTotal"

    const-string v1, "modules.Ordering.shouldAddTaxToTotal"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "modules.notification.connector"

    const-string v1, "modules.Notification.connector"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "modules.ordering.allowDownCharge"

    const-string v1, "modules.Ordering.allowDownCharge"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "modules.delivery.allowDownCharge"

    const-string v1, "modules.Delivery.allowDownCharge"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "modules.ordering.advertisablePromotionsEnabled"

    const-string v1, "interface.ordering.advertisablePromotionsEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "modules.ordering.doNotShowTaxWithTotal"

    const-string v1, "modules.ordering.orderTotalHaveTax"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "modules.customer.maxStoreCacheSize"

    const-string v1, "modules.Customer.maxStoreCacheSize"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "modules.nutritionInfo.nutritionalInfoThumbBaseURL"

    const-string v1, "connectors.Middleware.nutritionInfo.nutritionImageBaseUrl"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "forceUpdate.baseUrl"

    const-string v1, "forceUpdate.forceUpdateURL"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "forceUpdate.headerArgs.apiKey"

    const-string v1, "forceUpdate.forceUpdateAPIKey"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
