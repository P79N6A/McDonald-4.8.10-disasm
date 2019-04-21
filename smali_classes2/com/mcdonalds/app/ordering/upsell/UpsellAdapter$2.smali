.class Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;
.super Ljava/lang/Object;
.source "UpsellAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->onBindViewHolder(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

.field final synthetic val$holderPosition:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    iput p2, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;->val$holderPosition:I

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

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;->access$000(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;)Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$2;->val$holderPosition:I

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$UpsellButtonsCallback;->onMinusButtonClicked(I)V

    .line 90
    return-void
.end method
