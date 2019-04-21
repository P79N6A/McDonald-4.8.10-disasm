.class Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;
.super Ljava/util/Observable;
.source "UIUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/UIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPartsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Observable;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/app/ui/models/DayPartsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/util/UIUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/util/UIUtils$1;

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/ui/models/DayPartsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/app/ui/models/DayPartsResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    if-nez p3, :cond_0

    .line 840
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->access$202(Lcom/mcdonalds/app/ui/models/DayPartsResponse;)Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    .line 841
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;->setChanged()V

    .line 842
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;->notifyObservers()V

    .line 844
    :cond_0
    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->access$302(Z)Z

    .line 845
    return-void
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

    .line 835
    check-cast p1, Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;->onResponse(Lcom/mcdonalds/app/ui/models/DayPartsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
