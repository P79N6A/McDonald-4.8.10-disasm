.class Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;
.super Ljava/lang/Object;
.source "PaymentActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->scanQRCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/payment/PaymentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const-string v0, "onRequestPermissionsResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->finish()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/payment/PaymentActivity$4;->this$0:Lcom/mcdonalds/app/ordering/payment/PaymentActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/payment/PaymentActivity;->scanQRCode()V

    goto :goto_0
.end method
