.class Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;
.super Ljava/lang/Object;
.source "ProductChooserListAdapter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

.field final synthetic val$infoButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/ProductChooserListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;->val$infoButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
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

    .line 241
    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;->val$infoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;->val$infoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2$1;-><init>(Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
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

    .line 238
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/ProductChooserListAdapter$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
