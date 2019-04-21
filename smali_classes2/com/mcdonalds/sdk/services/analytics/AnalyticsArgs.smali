.class public final Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
.super Ljava/util/HashMap;
.source "AnalyticsArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$CustomDimensions;,
        Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;,
        Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;,
        Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATAKEY_ACTION:Ljava/lang/String; = "ACTION"

.field public static final DATAKEY_BUSINESS:Ljava/lang/String; = "DATAKEY_BUSINESS"

.field public static final DATAKEY_CATEGORY:Ljava/lang/String; = "CATEGORY"

.field public static final DATAKEY_CONVERSION_MASTER:Ljava/lang/String; = "CONVERSION_MASTER"

.field public static final DATAKEY_CUSTOM:Ljava/lang/String; = "DATAKEY_CUSTOM"

.field public static final DATAKEY_IMPRESSION:Ljava/lang/String; = "IMPRESSION"

.field public static final DATAKEY_JICE:Ljava/lang/String; = "JICE"

.field public static final DATAKEY_LABEL:Ljava/lang/String; = "LABEL"

.field public static final DATAKEY_THROWABLE:Ljava/lang/String; = "DATAKEY_THROWABLE"

.field public static final DATAKEY_VALUE:Ljava/lang/String; = "VALUE"

.field public static final ECOMMERCE_PROMOTION:Ljava/lang/String; = "In app offers"

.field public static final PRODUCT_LIST:Ljava/lang/String; = "PRODUCT_LIST"

.field public static final TRANSACTION_AFFILIATION:Ljava/lang/String; = "affliation"

.field public static final TRANSACTION_CURRENCY:Ljava/lang/String; = "CurrencyCode"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transactionId"

.field public static final TRANSACTION_ITEM_CATEGORY:Ljava/lang/String; = "category"

.field public static final TRANSACTION_ITEM_CURRENCY:Ljava/lang/String; = "currency"

.field public static final TRANSACTION_ITEM_NAME:Ljava/lang/String; = "name"

.field public static final TRANSACTION_ITEM_PRICE:Ljava/lang/String; = "price"

.field public static final TRANSACTION_ITEM_QUANTITY:Ljava/lang/String; = "quantity"

.field public static final TRANSACTION_ITEM_SKU:Ljava/lang/String; = "sku"

.field public static final TRANSACTION_MAP:Ljava/lang/String; = "TRANSACTION_MAP"

.field public static final TRANSACTION_PRODUCTS:Ljava/lang/String; = "transactionProducts"

.field public static final TRANSACTION_REVENUE:Ljava/lang/String; = "revenue"

.field public static final TRANSACTION_SHIPPING:Ljava/lang/String; = "Shipping"

.field public static final TRANSACTION_TAX:Ljava/lang/String; = "Tax"

.field public static final TRANSACTION_TOTAL:Ljava/lang/String; = "transactionTotal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
