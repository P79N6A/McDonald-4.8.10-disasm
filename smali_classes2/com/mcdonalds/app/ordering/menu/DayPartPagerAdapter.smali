.class public Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DayPartPagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuTypeObserver:Landroid/database/ContentObserver;

.field private mMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 83
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypeObserver:Landroid/database/ContentObserver;

    .line 53
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 54
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 55
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 56
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setMenuTypes()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.DayPartPagerAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setDayPartImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private isDelivery()Z
    .locals 2

    .prologue
    const-string v0, "isDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    return v0
.end method

.method private setDayPartImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    const-string v0, "setDayPartImage"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 306
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    const v1, 0x7f02024f

    .line 307
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/util/DownloadBitmap;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/mcdonalds/app/util/DownloadBitmap;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 308
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 309
    return-void
.end method

.method private setDisplayImageForDayPart(Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    const-string v0, "setDisplayImageForDayPart"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    new-instance v1, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;Landroid/widget/ImageView;)V

    invoke-static {v0, p2, v1}, Lcom/mcdonalds/app/util/UIUtils;->getDayPartImageUrl(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 298
    return-void
.end method

.method private setMenuTypes()V
    .locals 8

    .prologue
    const-string v5, "setMenuTypes"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    .line 63
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    .line 65
    .local v0, "isDelivery":Z
    const-string v5, "ordering"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 66
    .local v4, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getMenuTypes()Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 68
    .local v1, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v2

    .line 69
    .local v2, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v2, :cond_0

    .line 70
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    .end local v2    # "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public deregisterObserver()V
    .locals 2

    .prologue
    const-string v0, "deregisterObserver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    const-string v0, "destroyItem"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDayPartIconResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "menuTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "getDayPartIconResource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v1, "BREAKFAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u65e9\u9910"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_0
    const v0, 0x7f0200fc

    .line 223
    :cond_1
    :goto_0
    return v0

    .line 218
    :cond_2
    const-string v1, "REGULAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u6b63\u9910"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LUNCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    :cond_3
    const v0, 0x7f0200fe

    goto :goto_0

    .line 220
    :cond_4
    const-string v1, "NIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\u665a\u9910"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_5
    const v0, 0x7f0200fd

    goto :goto_0
.end method

.method public getDayPartText(Lcom/mcdonalds/sdk/modules/models/MenuType;)Ljava/lang/String;
    .locals 4
    .param p1, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const-string v1, "getDayPartText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v2

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->isDelivery()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v0

    .line 228
    .local v0, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/utils/DateUtils;->format24HourTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/utils/DateUtils;->format24HourTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDayPartText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "menuTypeName"    # Ljava/lang/String;

    .prologue
    const-string v1, "getDayPartText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const-string v1, "BREAKFAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u65e9\u9910"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0901b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 202
    :cond_1
    const-string v1, "REGULAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u6b63\u9910"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LUNCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0901b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "language":Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    const-string v1, "NIGHT"

    goto :goto_0

    .line 209
    :cond_4
    const-string v1, "\u665a\u9910"

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const-string v0, "getItemPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/4 v0, -0x2

    return v0
.end method

.method public getMenuEndingText(Lcom/mcdonalds/sdk/modules/models/MenuType;)Ljava/lang/String;
    .locals 11
    .param p1, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v3, "getMenuEndingText"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v6, "interface.dayparts.daypartEndingAlertTime"

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 274
    .local v2, "alertTimeConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 275
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->isDelivery()Z

    move-result v6

    invoke-virtual {v3, p1, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J

    move-result-wide v4

    .line 277
    .local v4, "timeLeftInMenu":J
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 279
    .local v0, "alertTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    cmp-long v3, v4, v0

    if-gtz v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0903e1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .end local v0    # "alertTime":J
    .end local v4    # "timeLeftInMenu":J
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuTypeForPosition(I)Lcom/mcdonalds/sdk/modules/models/MenuType;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getMenuTypeForPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuTypePosition(Lcom/mcdonalds/sdk/modules/models/MenuType;)I
    .locals 3
    .param p1, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const-string v0, "getMenuTypePosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPositionForMenuTypeId(I)I
    .locals 5
    .param p1, "menuTypeId"    # I

    .prologue
    const-string v1, "getPositionForMenuTypeId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/MenuType;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/MenuType;-><init>()V

    .line 195
    .local v0, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->setID(I)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getMenuTypePosition(Lcom/mcdonalds/sdk/modules/models/MenuType;)I

    move-result v1

    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 22
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const-string v18, "instantiateItem"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 108
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f040059

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 110
    .local v17, "v":Landroid/view/View;
    const v18, 0x7f11016d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 111
    .local v5, "carouselText":Landroid/widget/TextView;
    const v18, 0x7f11016c

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 112
    .local v10, "mNowServing":Landroid/widget/TextView;
    const v18, 0x7f11016b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 113
    .local v7, "dayPartIcon":Landroid/widget/ImageView;
    const v18, 0x7f110169

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 114
    .local v16, "pagerImage":Landroid/widget/ImageView;
    const v18, 0x7f11016e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 115
    .local v4, "availabilityTextView":Landroid/widget/TextView;
    const v18, 0x7f1100e0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 117
    .local v12, "menuEndingTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 119
    .local v13, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    const-string v14, ""

    .line 120
    .local v14, "menuTypeName":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 121
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 127
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getDayPartText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getDayPartIconResource(Ljava/lang/String;)I

    move-result v8

    .line 129
    .local v8, "dayPartIconResource":I
    if-eqz v8, :cond_1

    .line 130
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :cond_1
    const/4 v3, 0x0

    .line 133
    .local v3, "availabilityText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getDayPartText(Lcom/mcdonalds/sdk/modules/models/MenuType;)Ljava/lang/String;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->getMenuEndingText(Lcom/mcdonalds/sdk/modules/models/MenuType;)Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, "menuEndingText":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 139
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setDisplayImageForDayPart(Landroid/widget/ImageView;I)V

    .line 147
    const/4 v15, 0x0

    .line 148
    .local v15, "nowServing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->isDelivery()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v6

    .line 150
    .local v6, "currentDayPart":I
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v18

    move/from16 v0, v18

    if-ne v6, v0, :cond_6

    const/4 v15, 0x1

    .line 153
    .end local v6    # "currentDayPart":I
    :cond_3
    :goto_2
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090592

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 154
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    return-object v17

    .line 123
    .end local v3    # "availabilityText":Ljava/lang/String;
    .end local v8    # "dayPartIconResource":I
    .end local v11    # "menuEndingText":Ljava/lang/String;
    .end local v15    # "nowServing":Z
    :cond_4
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getDescription()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 124
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getDescription()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 142
    .restart local v3    # "availabilityText":Ljava/lang/String;
    .restart local v8    # "dayPartIconResource":I
    .restart local v11    # "menuEndingText":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 150
    .restart local v6    # "currentDayPart":I
    .restart local v15    # "nowServing":Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 156
    .end local v6    # "currentDayPart":I
    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isViewFromObject"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    if-ne p1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setMenuTypes()V

    .line 92
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    const-string v0, "registerObserver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$MenuTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mMenuTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    return-void
.end method

.method public setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->mStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method
