.class Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;
.super Ljava/lang/Object;
.source "MPGSPaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentTypeRegisterData"
.end annotation


# instance fields
.field private mCustomerId:Ljava/lang/String;

.field private mMerchantId:Ljava/lang/String;

.field private mRedirectUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)V
    .locals 8
    .param p2, "dataStr"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    if-eqz p2, :cond_3

    .line 346
    const-string v4, "&"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "arr":[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 348
    .local v1, "kv":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "kvPair":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 351
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v2, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "v":Ljava/lang/String;
    const-string v6, "merchant"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->setMerchantId(Ljava/lang/String;)V

    .line 347
    .end local v3    # "v":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    .restart local v3    # "v":Ljava/lang/String;
    :cond_1
    const-string v6, "customerId"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->setCustomerId(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    .end local v3    # "v":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 356
    .restart local v3    # "v":Ljava/lang/String;
    :cond_2
    const-string v6, "redirectUrl"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->setRedirectUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 365
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "kv":Ljava/lang/String;
    .end local v2    # "kvPair":[Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public getCustomerId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getCustomerId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getMerchantId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mMerchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getRedirectUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 3
    .param p1, "customerId"    # Ljava/lang/String;

    .prologue
    const-string v0, "setCustomerId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mCustomerId:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 3
    .param p1, "merchantId"    # Ljava/lang/String;

    .prologue
    const-string v0, "setMerchantId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mMerchantId:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    const-string v0, "setRedirectUrl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$PaymentTypeRegisterData;->mRedirectUrl:Ljava/lang/String;

    .line 377
    return-void
.end method
