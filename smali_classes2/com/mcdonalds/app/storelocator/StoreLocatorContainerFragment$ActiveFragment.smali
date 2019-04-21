.class final enum Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;
.super Ljava/lang/Enum;
.source "StoreLocatorContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActiveFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

.field public static final enum List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

.field public static final enum Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

.field public static final enum Search:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    const-string v1, "List"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    const-string v1, "Map"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    const-string v1, "Search"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Search:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Search:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment$ActiveFragment"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment$ActiveFragment"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    return-object v0
.end method
