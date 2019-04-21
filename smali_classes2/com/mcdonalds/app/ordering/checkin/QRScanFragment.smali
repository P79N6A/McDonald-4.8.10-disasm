.class public Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;
.super Lcom/mcdonalds/app/ui/CameraPreviewFragment;
.source "QRScanFragment.java"


# instance fields
.field private mInstructions:Landroid/widget/TextView;

.field private mQRReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;-><init>()V

    return-void
.end method

.method private buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "buildLuminanceSource"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p2

    move v7, p3

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method private displayInstructions(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "displayInstructions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const v1, 0x7f090678

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "available":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private updateQRScanInstructionsText()V
    .locals 4

    .prologue
    const-string v2, "updateQRScanInstructionsText"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 79
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 81
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->displayInstructions(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mInstructions:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v0, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    .line 60
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 69
    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mInstructions:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->updateQRScanInstructionsText()V

    .line 73
    :cond_0
    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const-string v6, "onPreviewFrame"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/CameraPreviewFragment;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 134
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 135
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 137
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, p1, v6, v7}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v5

    .line 138
    .local v5, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    const/4 v3, 0x0

    .line 142
    .local v3, "result":Lcom/google/zxing/Result;
    :try_start_1
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v6, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 146
    :try_start_2
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v6}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 149
    :goto_0
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->onQRCodeAcquired(Lcom/google/zxing/Result;)V

    .line 156
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "result":Lcom/google/zxing/Result;
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :cond_0
    :goto_1
    return-void

    .line 143
    .restart local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "result":Lcom/google/zxing/Result;
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    .restart local v5    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :catch_0
    move-exception v6

    .line 146
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v6}, Lcom/google/zxing/MultiFormatReader;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    .end local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "result":Lcom/google/zxing/Result;
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "result":Lcom/google/zxing/Result;
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    .restart local v5    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :catchall_0
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->mQRReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public onQRCodeAcquired(Lcom/google/zxing/Result;)V
    .locals 5
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    const-string v2, "onQRCodeAcquired"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "result_code"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/checkin/QRScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 165
    return-void
.end method
