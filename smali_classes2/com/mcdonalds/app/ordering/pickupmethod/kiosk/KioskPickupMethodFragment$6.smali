.class Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;
.super Ljava/lang/Object;
.source "KioskPickupMethodFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->checkin(Ljava/lang/String;)V
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
        "Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;
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

    .line 232
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 233
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    if-nez p3, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->getBarcode()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$902(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$1000(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$900(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->access$1100(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;->getRandomCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
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

    .line 229
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$6;->onResponse(Lcom/mcdonalds/sdk/modules/models/KioskCheckinResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
