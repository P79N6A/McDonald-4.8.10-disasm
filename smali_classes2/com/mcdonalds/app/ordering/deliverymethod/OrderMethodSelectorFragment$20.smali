.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->collapseContent(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$20;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$400(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1132
    :cond_0
    return-void
.end method
