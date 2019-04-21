.class Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;
.super Ljava/lang/Object;
.source "ChoiceSelectorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->onBindViewHolder(Lcom/mcdonalds/app/util/BindingHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

.field final synthetic val$productDetailsItemPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;->this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;->val$productDetailsItemPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;->this$0:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter$3;->val$productDetailsItemPresenter:Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorListItemPresenter;->getRecipeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;->access$200(Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorAdapter;Ljava/lang/String;)V

    .line 116
    return-void
.end method
