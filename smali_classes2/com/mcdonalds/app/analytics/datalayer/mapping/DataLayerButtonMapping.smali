.class public Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;
.super Ljava/lang/Object;
.source "DataLayerButtonMapping.java"


# static fields
.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "FirstLoadTutorial"

    const-string v2, "tutorial_next_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NextButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "Dashboard"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "Dashboard"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "Registration"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "Registration"

    const-string v2, "sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "OffersRequest"

    const-string v2, "offers_registration_button_text"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AcceptOffersButtonAction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "OffersRequest"

    const-string v2, "offers_deny_text"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AcceptOffersButtonAction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "AboutTheApp"

    const-string v2, "end_user_license_agreement"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EULAItemPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "AboutTheApp"

    const-string v2, "terms_and_conditions"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermsItemPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "AboutTheApp"

    const-string v2, "privacy"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacyItemPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "AboutTheApp"

    const-string v2, "faq"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAQItemPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "RestaurantLocator"

    const-string v2, "button_select"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectAsCurrentStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "RestaurantLocator"

    const-string v2, "save_to_favorites"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "RestaurantLocator"

    const-string v2, "sl_skip_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooseAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "RestaurantLocator"

    const-string v2, "start_an_order"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlaceOrderButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "RestaurantLocator"

    const-string v2, "remove_from_favorites"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnfavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "StoreDetail"

    const-string v2, "get_directions_btn"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetDirectionsButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "StoreDetail"

    const-string v2, "button_rename_txt"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenameStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "StoreDetail"

    const-string v2, "favorites_btn_txt"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnfavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "ProductMenu"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinueButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "ProductMenu"

    const-string v2, "find_another_store_label"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "ProductsFilterAllSubview"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinueButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "ProductsFilterAllSubview"

    const-string v2, "find_another_store_label"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinueButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "find_another_store_label"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinueButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "find_another_store_label"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "ProductsFilterSearchSubview"

    const-string v2, "continue_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinueButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "ProductsFilterSearchSubview"

    const-string v2, "find_another_store_label"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FindAnotherStoreButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "ProductMenu"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "ProductMenu"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "ProductsFilterAllSubview"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "ProductsFilterAllSubview"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "ProductDetails"

    const-string v2, "plus_sign"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateMealQuantityPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "ProductDetails"

    const-string v2, "minus_sign"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateMealQuantityPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "ProductDetails"

    const-string v2, "add_item_to_favorites"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "ProductDetails"

    const-string v2, "save_to_favorites"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "ProductDetails"

    const-string v2, "label_add_to_basket"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AddToBasketButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "Basket"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "Basket"

    const-string v2, "text_signin_title"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "Basket"

    const-string v2, "button_delete_order"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeleteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "Basket"

    const-string v2, "edit"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "Basket"

    const-string v2, "remove"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoveButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "Basket"

    const-string v2, "make_it_a_meal"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoveButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "LogIn"

    const-string v2, "button_text_login"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "LogIn"

    const-string v2, "register_signin_button"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "PushNotificationRequest"

    const-string v2, "push_notification_and_offers_confirm_text"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AcceptOffersButtonAction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "PushNotificationRequest"

    const-string v2, "push_notification_deny_text"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeclineOffersButtonAction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "FirstLoadTutorial"

    const-string v2, "button_title_sign_in"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SignInButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "ProductsFilterFavoritesSubview"

    const-string v2, "see_all"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeeAllButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "ProductsFilterRecentsSubview"

    const-string v2, "see_all"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeeAllButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "ProductMenu"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "ProductMenu"

    const-string v2, "see_all"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeeAllButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "AllFavorites"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "AllRecents"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "OrderDetail"

    const-string v2, "order_again"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderAgainButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "OrderDetail"

    const-string v2, "favorite_order"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "OrderDetail"

    const-string v2, "save_to_favorites"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteButtonPressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->MAP:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.mapping.DataLayerButtonMapping"

    const-string v2, "format"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const-string v0, "%s-%s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.mapping.DataLayerButtonMapping"

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->MAP:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
