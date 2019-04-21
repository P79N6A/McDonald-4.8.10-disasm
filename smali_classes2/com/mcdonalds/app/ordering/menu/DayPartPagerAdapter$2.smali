.class Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;
.super Ljava/lang/Object;
.source "DayPartPagerAdapter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->setDisplayImageForDayPart(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 290
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;->access$000(Lcom/mcdonalds/app/ordering/menu/DayPartPagerAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method
