.class public Lcom/mcdonalds/sdk/modules/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;
    }
.end annotation


# static fields
.field public static final MCD_MODULES_RELOADED_NOTIFICATION:Ljava/lang/String; = "com.mcdonalds.notification.MCD_MODULES_RELOADED_NOTIFICATION"

.field private static final MODULE_CONFIGS_PATH:Ljava/lang/String; = "modules"

.field public static final ORDER_CHANGED_NOTIFICATION:Ljava/lang/String; = "com.mcdonalds.notification.ORDER_CHANGED_NOTIFICATION"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/modules/ModuleManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/BaseModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getMockLocation()Landroid/location/Location;
    .locals 6

    .prologue
    .line 204
    new-instance v3, Lcom/mcdonalds/sdk/modules/ModuleManager$2;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager$2;-><init>()V

    .line 205
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 206
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->CACHE_KEY:Ljava/lang/String;

    .line 207
    invoke-virtual {v3, v4, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;

    .line 209
    .local v0, "mockLocation":Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;
    const/4 v1, 0x0

    .line 210
    .local v1, "ret":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Landroid/location/Location;

    .end local v1    # "ret":Landroid/location/Location;
    const-string v3, "Mock Location Selection Fragment"

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v1    # "ret":Landroid/location/Location;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 213
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 216
    :cond_0
    return-object v1
.end method

.method public static getModule(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "implementation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModuleImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getModuleInstanceForName(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/BaseModule;
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 153
    const-string v1, "ModuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Valid Module found for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :sswitch_0
    const-string v2, "customer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "delivery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "nutritionInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "offers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "ordering"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "storeLocator"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "paymentRegistration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "Configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "security"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    .line 133
    :pswitch_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 135
    :pswitch_1
    new-instance v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;-><init>()V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    new-instance v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;-><init>()V

    goto/16 :goto_0

    .line 139
    :pswitch_3
    new-instance v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;-><init>()V

    goto/16 :goto_0

    .line 141
    :pswitch_4
    new-instance v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 143
    :pswitch_5
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 145
    :pswitch_6
    new-instance v0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 147
    :pswitch_7
    new-instance v0, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;-><init>()V

    goto/16 :goto_0

    .line 149
    :pswitch_8
    new-instance v0, Lcom/mcdonalds/sdk/modules/ConfigurationModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/ConfigurationModule;-><init>()V

    goto/16 :goto_0

    .line 151
    :pswitch_9
    new-instance v0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/security/SecurityModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        -0x670a379a -> :sswitch_2
        -0x5d2d5b2a -> :sswitch_8
        -0x3cc8ce69 -> :sswitch_3
        -0x113d6a21 -> :sswitch_7
        0x237a88eb -> :sswitch_6
        0x24217fde -> :sswitch_0
        0x31151bf4 -> :sswitch_1
        0x38927740 -> :sswitch_9
        0x499225d4 -> :sswitch_4
        0x51faec75 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mSharedInstance:Lcom/mcdonalds/sdk/modules/ModuleManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mcdonalds/sdk/modules/ModuleManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;-><init>()V

    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mSharedInstance:Lcom/mcdonalds/sdk/modules/ModuleManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mSharedInstance:Lcom/mcdonalds/sdk/modules/ModuleManager;

    return-object v0
.end method

.method public static isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "implementation"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modules."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static setMockLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p0, "latitude"    # Ljava/lang/Double;
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->setMockLocation(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V

    .line 175
    return-void
.end method

.method public static setMockLocation(Ljava/lang/Double;Ljava/lang/Double;Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
    .locals 8
    .param p0, "latitude"    # Ljava/lang/Double;
    .param p1, "longitude"    # Ljava/lang/Double;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

    .prologue
    .line 184
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 185
    .local v1, "manager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 196
    :goto_0
    return-void

    .line 188
    :cond_1
    new-instance v3, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;-><init>(Lcom/mcdonalds/sdk/modules/ModuleManager$1;)V

    .line 189
    .local v3, "mockLocation":Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;
    invoke-virtual {v3, p0}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->setLatitude(Ljava/lang/Double;)V

    .line 190
    invoke-virtual {v3, p1}, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->setLongitude(Ljava/lang/Double;)V

    .line 193
    sget-object v2, Lcom/mcdonalds/sdk/modules/ModuleManager$MockLocation;->CACHE_KEY:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x474a

    .line 194
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v7, p2

    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZLcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V

    goto :goto_0
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/modules/ModuleManager;)V
    .locals 0
    .param p0, "moduleManager"    # Lcom/mcdonalds/sdk/modules/ModuleManager;

    .prologue
    .line 91
    sput-object p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mSharedInstance:Lcom/mcdonalds/sdk/modules/ModuleManager;

    .line 92
    return-void
.end method


# virtual methods
.method public clearModules()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mModuleMap:Ljava/util/HashMap;

    .line 165
    return-void
.end method

.method public deleteCurrentOrder()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->deleteCurrentOrder()V

    .line 260
    return-void
.end method

.method public getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBasketQuantity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getMaxBasketQuantity()I

    move-result v0

    return v0
.end method

.method public getModuleImpl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "implementation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/BaseModule;

    .line 117
    .local v0, "module":Lcom/mcdonalds/sdk/modules/BaseModule;
    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModuleInstanceForName(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/BaseModule;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/ModuleManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/ModuleManager;->mModuleMap:Ljava/util/HashMap;

    .line 63
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    const-string v1, "MCD_LOGIN_STATE_CHANGED"

    new-instance v2, Lcom/mcdonalds/sdk/modules/ModuleManager$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/modules/ModuleManager$1;-><init>(Lcom/mcdonalds/sdk/modules/ModuleManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 73
    return-object p0
.end method

.method public isNutritionAvailable()Z
    .locals 1

    .prologue
    .line 236
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrderingAvailable()Z
    .locals 1

    .prologue
    .line 226
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "delivery"

    .line 227
    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 1
    .param p1, "newOrder"    # Lcom/mcdonalds/sdk/modules/models/Order;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 284
    return-void
.end method
