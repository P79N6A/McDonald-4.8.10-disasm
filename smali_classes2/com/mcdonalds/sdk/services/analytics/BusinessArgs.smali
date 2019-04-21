.class public Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;
.super Ljava/lang/Object;
.source "BusinessArgs.java"


# static fields
.field public static final EVENT_ACCEPT_PRIVACY_TERMS:Ljava/lang/String; = "accept_privacy_terms"

.field public static final EVENT_ADD_FAVORITE:Ljava/lang/String; = "Add order to favorite"

.field public static final EVENT_APPLY_TO_ORDER:Ljava/lang/String; = "Apply to mobile order"

.field public static final EVENT_APP_OPEN_COUNT:Ljava/lang/String; = "app_open_count"

.field public static final EVENT_CHECKOUT:Ljava/lang/String; = "Check out"

.field public static final EVENT_ORDER_CONFIRM:Ljava/lang/String; = "Order Confirm"

.field public static final EVENT_PRODUCT_OFFER_CLICK:Ljava/lang/String; = "offer_click"

.field public static final EVENT_PRODUCT_OFFER_OPT:Ljava/lang/String; = "product_offer_opt"

.field public static final EVENT_PRODUCT_OFFER_REDEEM:Ljava/lang/String; = "offer_redeem_intent"

.field public static final EVENT_REGISTRATION_OFFERS_OPT:Ljava/lang/String; = "registration_offers_opt"

.field public static final EVENT_REGISTRATION_SUCCESS:Ljava/lang/String; = "registration_success"

.field public static final KEY_CART_ID:Ljava/lang/String; = "cartID"

.field public static final KEY_CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field public static final KEY_ECP_ID:Ljava/lang/String; = "ecp_id"

.field public static final KEY_EVENT_TITLE:Ljava/lang/String; = "eventTitle"

.field public static final KEY_EVENT_VALUE:Ljava/lang/String; = "eventValue"

.field public static final KEY_OFFER_CREATIVE:Ljava/lang/String; = "offer_creative"

.field public static final KEY_OFFER_ID:Ljava/lang/String; = "offer_id"

.field public static final KEY_OFFER_NAME:Ljava/lang/String; = "offer_name"

.field public static final KEY_OPT_STATUS:Ljava/lang/String; = "opt_status"

.field public static final KEY_ORDER_ID:Ljava/lang/String; = "orderID"

.field public static final KEY_ORDER_TOTAL:Ljava/lang/String; = "orderTotal"

.field public static final KEY_PRODUCT_CATEGORY:Ljava/lang/String; = "product_category"

.field public static final KEY_PRODUCT_ID:Ljava/lang/String; = "productID"

.field public static final KEY_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field public static final KEY_PRODUCT_QUANTITY:Ljava/lang/String; = "productQuantity"

.field public static final KEY_SIGNIN_TYPE:Ljava/lang/String; = "sign_in_type"

.field public static final KEY_SOCIAL_SITE:Ljava/lang/String; = "social_site"

.field public static final VALUE_ALL:Ljava/lang/String; = "All"

.field public static final VALUE_IN:Ljava/lang/String; = "IN"

.field public static final VALUE_MCD:Ljava/lang/String; = "mcd"

.field public static final VALUE_OUT:Ljava/lang/String; = "OUT"

.field public static final VALUE_SOCIAL:Ljava/lang/String; = "social"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToMobileOrder(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "Apply to mobile order"

    invoke-static {v0, p0}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOffers(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getAgreedConfirmation()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventTitle"

    const-string v2, "accept_privacy_terms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "eventValue"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method

.method public static getAppOpen()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "app_open_count"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "eventValue"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v1
.end method

.method public static getFavoriteOrderProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/HashMap;
    .locals 4
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "Add order to favorite"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "productName"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "productID"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRecipeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object v1
.end method

.method public static getOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "offer_click"

    invoke-static {v0, p0}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOffers(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferRedeem(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "offer_redeem_intent"

    invoke-static {v0, p0}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOffers(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static getOffers(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;
    .locals 4
    .param p0, "eventTitle"    # Ljava/lang/String;
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "offer_id"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "offer_name"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "offer_creative"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v0    # "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOrderConfirmation(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "total"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "Order Confirm"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "orderID"

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v2, "orderTotal"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v1
.end method

.method public static getProductFromBasket(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/HashMap;
    .locals 4
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "Check out"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "productName"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "productID"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRecipeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "productQuantity"

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "cartID"

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object v1
.end method

.method public static getProductOfferOpt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "productCategory"    # Ljava/lang/String;
    .param p1, "optStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "product_offer_opt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "product_category"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "opt_status"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v1
.end method

.method public static getRegistrationOffersOpt(Z)Ljava/util/HashMap;
    .locals 3
    .param p0, "optIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventTitle"

    const-string v2, "registration_offers_opt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "eventValue"

    if-eqz p0, :cond_0

    const-string v1, "IN"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0

    .line 58
    :cond_0
    const-string v1, "OUT"

    goto :goto_0
.end method

.method public static getRegistrationSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "isSocial"    # Z
    .param p1, "socialType"    # Ljava/lang/String;
    .param p2, "ecpId"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "eventTitle"

    const-string v3, "registration_success"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "eventValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "sign_in_type"

    if-eqz p0, :cond_0

    const-string v2, "social"

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "social_site"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "ecp_id"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "customer_id"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "eventValue"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v1

    .line 80
    :cond_0
    const-string v2, "mcd"

    goto :goto_0
.end method

.method private static getTimeStamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    const-string v0, "yyyy-MM-ddhh:mm:ss"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
