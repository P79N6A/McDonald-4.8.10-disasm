.class Lhk/com/aisoft/easyaddrui/eaView$9;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk/com/aisoft/easyaddrui/eaView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhk/com/aisoft/easyaddrui/eaView;


# direct methods
.method constructor <init>(Lhk/com/aisoft/easyaddrui/eaView;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$9;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 57
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    const-string v27, ""

    .line 363
    .local v27, "sHub":Ljava/lang/String;
    const-string v29, ""

    .line 364
    .local v29, "sUBI":Ljava/lang/String;
    const-string v28, ""

    .line 365
    .local v28, "sLot":Ljava/lang/String;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrName:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 366
    .local v33, "txtAddrName":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrDetails:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 367
    .local v31, "txtAddrDetails":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAreaC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 368
    .local v34, "txtAreaC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAreaE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 369
    .local v35, "txtAreaE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtDistrictC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 370
    .local v40, "txtDistrictC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtDistrictE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 371
    .local v41, "txtDistrictE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 372
    .local v49, "txtStreetC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 373
    .local v50, "txtStreetE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetLon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 374
    .local v53, "txtStreetLon":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetFromNo:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 375
    .local v52, "txtStreetFromNo":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetFromCode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 376
    .local v51, "txtStreetFromCode":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetToNo:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 377
    .local v55, "txtStreetToNo":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtStreetToCode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 378
    .local v54, "txtStreetToCode":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtEstateC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 379
    .local v42, "txtEstateC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtEstateE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 380
    .local v43, "txtEstateE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtBldgC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 381
    .local v36, "txtBldgC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtBldgE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 382
    .local v37, "txtBldgE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtBlockC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 383
    .local v38, "txtBlockC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtBlockE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 384
    .local v39, "txtBlockE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtHub1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 385
    .local v44, "txtHub1":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtHub2:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 386
    .local v45, "txtHub2":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtHub3:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 387
    .local v46, "txtHub3":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtHub4:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 388
    .local v47, "txtHub4":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrC:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 389
    .local v30, "txtAddrC":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrE:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 390
    .local v32, "txtAddrE":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtUBI:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 391
    .local v56, "txtUBI":Landroid/widget/TextView;
    sget v2, Lhk/com/aisoft/easyaddrui/R$id;->txtLot:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 394
    .local v48, "txtLot":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 395
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v0, v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sUBI:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 396
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v0, v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sLot:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 398
    sput-object v28, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    .line 399
    sput-object v29, Lhk/com/aisoft/easyaddrui/eaView;->sCurrDau:Ljava/lang/String;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lhk/com/aisoft/easyaddrui/eaView$9;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    const/4 v3, 0x0

    iput v3, v2, Lhk/com/aisoft/easyaddrui/eaView;->sLastScrollCnt:I

    .line 404
    new-instance v2, Lhk/com/aisoft/easyaddrui/AddressReturn;

    invoke-direct {v2}, Lhk/com/aisoft/easyaddrui/AddressReturn;-><init>()V

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    .line 405
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sUBI:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    new-instance v4, Lhk/com/aisoft/easyaddrui/Address;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    invoke-direct {v4, v2}, Lhk/com/aisoft/easyaddrui/Address;-><init>(Lhk/com/aisoft/easyaddrui/ResponseAddr;)V

    iput-object v4, v3, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    .line 407
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    invoke-static {v2}, Lhk/com/aisoft/easyaddrui/ResultAdapter;->getDisplayAddrFrmRespAddr(Lhk/com/aisoft/easyaddrui/ResponseAddr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v3, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormSelAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 412
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 413
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 415
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 416
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 417
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 419
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub1:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    const-string v2, "INBOUND"

    invoke-static {v2}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->getAddrSelected(Ljava/lang/String;)V

    .line 466
    :goto_0
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 467
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodManager;

    .line 468
    .local v26, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 478
    .end local v26    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v27    # "sHub":Ljava/lang/String;
    .end local v28    # "sLot":Ljava/lang/String;
    .end local v29    # "sUBI":Ljava/lang/String;
    .end local v30    # "txtAddrC":Landroid/widget/TextView;
    .end local v31    # "txtAddrDetails":Landroid/widget/TextView;
    .end local v32    # "txtAddrE":Landroid/widget/TextView;
    .end local v33    # "txtAddrName":Landroid/widget/TextView;
    .end local v34    # "txtAreaC":Landroid/widget/TextView;
    .end local v35    # "txtAreaE":Landroid/widget/TextView;
    .end local v36    # "txtBldgC":Landroid/widget/TextView;
    .end local v37    # "txtBldgE":Landroid/widget/TextView;
    .end local v38    # "txtBlockC":Landroid/widget/TextView;
    .end local v39    # "txtBlockE":Landroid/widget/TextView;
    .end local v40    # "txtDistrictC":Landroid/widget/TextView;
    .end local v41    # "txtDistrictE":Landroid/widget/TextView;
    .end local v42    # "txtEstateC":Landroid/widget/TextView;
    .end local v43    # "txtEstateE":Landroid/widget/TextView;
    .end local v44    # "txtHub1":Landroid/widget/TextView;
    .end local v45    # "txtHub2":Landroid/widget/TextView;
    .end local v46    # "txtHub3":Landroid/widget/TextView;
    .end local v47    # "txtHub4":Landroid/widget/TextView;
    .end local v48    # "txtLot":Landroid/widget/TextView;
    .end local v49    # "txtStreetC":Landroid/widget/TextView;
    .end local v50    # "txtStreetE":Landroid/widget/TextView;
    .end local v51    # "txtStreetFromCode":Landroid/widget/TextView;
    .end local v52    # "txtStreetFromNo":Landroid/widget/TextView;
    .end local v53    # "txtStreetLon":Landroid/widget/TextView;
    .end local v54    # "txtStreetToCode":Landroid/widget/TextView;
    .end local v55    # "txtStreetToNo":Landroid/widget/TextView;
    .end local v56    # "txtUBI":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-void

    .line 424
    .restart local v27    # "sHub":Ljava/lang/String;
    .restart local v28    # "sLot":Ljava/lang/String;
    .restart local v29    # "sUBI":Ljava/lang/String;
    .restart local v30    # "txtAddrC":Landroid/widget/TextView;
    .restart local v31    # "txtAddrDetails":Landroid/widget/TextView;
    .restart local v32    # "txtAddrE":Landroid/widget/TextView;
    .restart local v33    # "txtAddrName":Landroid/widget/TextView;
    .restart local v34    # "txtAreaC":Landroid/widget/TextView;
    .restart local v35    # "txtAreaE":Landroid/widget/TextView;
    .restart local v36    # "txtBldgC":Landroid/widget/TextView;
    .restart local v37    # "txtBldgE":Landroid/widget/TextView;
    .restart local v38    # "txtBlockC":Landroid/widget/TextView;
    .restart local v39    # "txtBlockE":Landroid/widget/TextView;
    .restart local v40    # "txtDistrictC":Landroid/widget/TextView;
    .restart local v41    # "txtDistrictE":Landroid/widget/TextView;
    .restart local v42    # "txtEstateC":Landroid/widget/TextView;
    .restart local v43    # "txtEstateE":Landroid/widget/TextView;
    .restart local v44    # "txtHub1":Landroid/widget/TextView;
    .restart local v45    # "txtHub2":Landroid/widget/TextView;
    .restart local v46    # "txtHub3":Landroid/widget/TextView;
    .restart local v47    # "txtHub4":Landroid/widget/TextView;
    .restart local v48    # "txtLot":Landroid/widget/TextView;
    .restart local v49    # "txtStreetC":Landroid/widget/TextView;
    .restart local v50    # "txtStreetE":Landroid/widget/TextView;
    .restart local v51    # "txtStreetFromCode":Landroid/widget/TextView;
    .restart local v52    # "txtStreetFromNo":Landroid/widget/TextView;
    .restart local v53    # "txtStreetLon":Landroid/widget/TextView;
    .restart local v54    # "txtStreetToCode":Landroid/widget/TextView;
    .restart local v55    # "txtStreetToNo":Landroid/widget/TextView;
    .restart local v56    # "txtUBI":Landroid/widget/TextView;
    :cond_1
    const-string v2, "OUTBOUND"

    invoke-static {v2}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->getAddrSelected(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v27    # "sHub":Ljava/lang/String;
    .end local v28    # "sLot":Ljava/lang/String;
    .end local v29    # "sUBI":Ljava/lang/String;
    .end local v30    # "txtAddrC":Landroid/widget/TextView;
    .end local v31    # "txtAddrDetails":Landroid/widget/TextView;
    .end local v32    # "txtAddrE":Landroid/widget/TextView;
    .end local v33    # "txtAddrName":Landroid/widget/TextView;
    .end local v34    # "txtAreaC":Landroid/widget/TextView;
    .end local v35    # "txtAreaE":Landroid/widget/TextView;
    .end local v36    # "txtBldgC":Landroid/widget/TextView;
    .end local v37    # "txtBldgE":Landroid/widget/TextView;
    .end local v38    # "txtBlockC":Landroid/widget/TextView;
    .end local v39    # "txtBlockE":Landroid/widget/TextView;
    .end local v40    # "txtDistrictC":Landroid/widget/TextView;
    .end local v41    # "txtDistrictE":Landroid/widget/TextView;
    .end local v42    # "txtEstateC":Landroid/widget/TextView;
    .end local v43    # "txtEstateE":Landroid/widget/TextView;
    .end local v44    # "txtHub1":Landroid/widget/TextView;
    .end local v45    # "txtHub2":Landroid/widget/TextView;
    .end local v46    # "txtHub3":Landroid/widget/TextView;
    .end local v47    # "txtHub4":Landroid/widget/TextView;
    .end local v48    # "txtLot":Landroid/widget/TextView;
    .end local v49    # "txtStreetC":Landroid/widget/TextView;
    .end local v50    # "txtStreetE":Landroid/widget/TextView;
    .end local v51    # "txtStreetFromCode":Landroid/widget/TextView;
    .end local v52    # "txtStreetFromNo":Landroid/widget/TextView;
    .end local v53    # "txtStreetLon":Landroid/widget/TextView;
    .end local v54    # "txtStreetToCode":Landroid/widget/TextView;
    .end local v55    # "txtStreetToNo":Landroid/widget/TextView;
    .end local v56    # "txtUBI":Landroid/widget/TextView;
    :catch_0
    move-exception v25

    .line 472
    .local v25, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 428
    .end local v25    # "ex":Ljava/lang/Exception;
    .restart local v27    # "sHub":Ljava/lang/String;
    .restart local v28    # "sLot":Ljava/lang/String;
    .restart local v29    # "sUBI":Ljava/lang/String;
    .restart local v30    # "txtAddrC":Landroid/widget/TextView;
    .restart local v31    # "txtAddrDetails":Landroid/widget/TextView;
    .restart local v32    # "txtAddrE":Landroid/widget/TextView;
    .restart local v33    # "txtAddrName":Landroid/widget/TextView;
    .restart local v34    # "txtAreaC":Landroid/widget/TextView;
    .restart local v35    # "txtAreaE":Landroid/widget/TextView;
    .restart local v36    # "txtBldgC":Landroid/widget/TextView;
    .restart local v37    # "txtBldgE":Landroid/widget/TextView;
    .restart local v38    # "txtBlockC":Landroid/widget/TextView;
    .restart local v39    # "txtBlockE":Landroid/widget/TextView;
    .restart local v40    # "txtDistrictC":Landroid/widget/TextView;
    .restart local v41    # "txtDistrictE":Landroid/widget/TextView;
    .restart local v42    # "txtEstateC":Landroid/widget/TextView;
    .restart local v43    # "txtEstateE":Landroid/widget/TextView;
    .restart local v44    # "txtHub1":Landroid/widget/TextView;
    .restart local v45    # "txtHub2":Landroid/widget/TextView;
    .restart local v46    # "txtHub3":Landroid/widget/TextView;
    .restart local v47    # "txtHub4":Landroid/widget/TextView;
    .restart local v48    # "txtLot":Landroid/widget/TextView;
    .restart local v49    # "txtStreetC":Landroid/widget/TextView;
    .restart local v50    # "txtStreetE":Landroid/widget/TextView;
    .restart local v51    # "txtStreetFromCode":Landroid/widget/TextView;
    .restart local v52    # "txtStreetFromNo":Landroid/widget/TextView;
    .restart local v53    # "txtStreetLon":Landroid/widget/TextView;
    .restart local v54    # "txtStreetToCode":Landroid/widget/TextView;
    .restart local v55    # "txtStreetToNo":Landroid/widget/TextView;
    .restart local v56    # "txtUBI":Landroid/widget/TextView;
    :cond_2
    :try_start_1
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v3, "0"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 429
    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    new-instance v4, Lhk/com/aisoft/easyaddrui/Address;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    invoke-direct {v4, v2}, Lhk/com/aisoft/easyaddrui/Address;-><init>(Lhk/com/aisoft/easyaddrui/ResponseAddr;)V

    iput-object v4, v3, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    .line 430
    const-string v2, ""

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 431
    const/4 v2, 0x1

    sput-boolean v2, Lhk/com/aisoft/easyaddrui/eaView;->sSkipAutoSearch:Z

    .line 433
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    const-string v3, "S"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    .line 458
    :cond_3
    :goto_2
    new-instance v1, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v40 .. v40}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v53 .. v53}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v52 .. v52}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v55 .. v55}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v54 .. v54}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v1 .. v24}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v1, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 460
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lhk/com/aisoft/easyaddrui/eaView$9;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v5, v5, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v6, Lhk/com/aisoft/easyaddrui/R$string;->uat_addr_more:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DOMAIN]"

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_d

    invoke-virtual {v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    .end local v1    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :goto_3
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->access$100()V

    goto/16 :goto_0

    .line 435
    :cond_4
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    const-string v3, "E"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    goto/16 :goto_2

    .line 437
    :cond_5
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    const-string v3, "B"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    goto/16 :goto_2

    .line 439
    :cond_6
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v2, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    :cond_7
    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 441
    :cond_8
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "zh-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 442
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :goto_4
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 447
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    const-string v3, "E"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    goto/16 :goto_2

    .line 444
    :cond_9
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 448
    :cond_a
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 449
    :cond_b
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "zh-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 450
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :goto_5
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 455
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    const-string v3, "B"

    iput-object v3, v2, Lhk/com/aisoft/easyaddrui/ResponseQK;->sType:Ljava/lang/String;

    goto/16 :goto_2

    .line 452
    :cond_c
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 460
    .restart local v1    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :cond_d
    check-cast v1, Landroid/os/AsyncTask;

    .end local v1    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 462
    .restart local v1    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    :cond_e
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lhk/com/aisoft/easyaddrui/eaView$9;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    iget-object v5, v5, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v6, Lhk/com/aisoft/easyaddrui/R$string;->url_addr_more:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DOMAIN]"

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_f

    invoke-virtual {v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadSearchMore;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    :cond_f
    check-cast v1, Landroid/os/AsyncTask;

    .end local v1    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadSearchMore;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
