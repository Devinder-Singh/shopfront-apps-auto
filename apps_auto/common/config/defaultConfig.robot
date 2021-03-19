*** Settings ***
Resource          ../../${PLATFORM_NAME}/or/orAddAddress.robot
Resource          ../../${PLATFORM_NAME}/or/orAirtimeContinue.robot
Resource          ../../${PLATFORM_NAME}/or/orCardPayment.robot
Resource          ../../${PLATFORM_NAME}/or/orCheckout.robot
Resource          ../../${PLATFORM_NAME}/or/orDelivery.robot
Resource          ../../${PLATFORM_NAME}/or/orDeliveryFee.robot
Resource          ../../${PLATFORM_NAME}/or/orHome.robot
Resource          ../../${PLATFORM_NAME}/or/orLogin.robot
Resource          ../../${PLATFORM_NAME}/or/orMenu.robot
Resource          ../../${PLATFORM_NAME}/or/orPayment.robot
Resource          ../../${PLATFORM_NAME}/or/orPaymentMethod.robot
Resource          ../../${PLATFORM_NAME}/or/orPDP.robot
Resource          ../../${PLATFORM_NAME}/or/orPersonalDetail.robot
Resource          ../../${PLATFORM_NAME}/or/orProductList.robot
Resource          ../../${PLATFORM_NAME}/or/orSearch.robot
Resource          ../../${PLATFORM_NAME}/or/orSelectAddress.robot
Resource          ../../${PLATFORM_NAME}/or/orTVLicence.robot
Resource          ../../${PLATFORM_NAME}/or/orWishlist.robot
Resource          ../../${PLATFORM_NAME}/or/orAgeVerification.robot
Resource          ../../${PLATFORM_NAME}/or/orConfirmAddress.robot
Resource          ../../${PLATFORM_NAME}/or/orPinDeliveryLocation.robot
Resource          ../../${PLATFORM_NAME}/or/orSelectPickupPoint.robot
Resource          ../../${PLATFORM_NAME}/or/orOrders.robot
Resource          ../../${PLATFORM_NAME}/or/orEarneBucks.robot
Resource          ../../${PLATFORM_NAME}/or/orGift.robot
Resource          ../../${PLATFORM_NAME}/or/orConfirmation.robot
Resource          ../../${PLATFORM_NAME}/or/orPaymentOzow.robot
Resource          ../../${PLATFORM_NAME}/or/orPaymentMobi.robot
Resource          ../../${PLATFORM_NAME}/or/orPaymentEBucks.robot
Resource          ../../${PLATFORM_NAME}/or/orVoucher.robot
Resource          ../../${PLATFORM_NAME}/or/orRegister.robot

Resource          ../../${PLATFORM_NAME}/config/testConfig.robot
Resource          ../kw/kwOrders.robot
Resource          ../kw/kwAddAddress.robot
Resource          ../kw/kwAirtimeContinue.robot
Resource          ../kw/kwCardPayment.robot
Resource          ../kw/kwCheckout.robot
Resource          ../kw/kwDelivery.robot
Resource          ../kw/kwDeliveryFee.robot
Resource          ../kw/kwHome.robot
Resource          ../kw/kwLogin.robot
Resource          ../kw/kwMenu.robot
Resource          ../kw/kwPayment.robot
Resource          ../kw/kwPaymentMethod.robot
Resource          ../kw/kwPDP.robot
Resource          ../kw/kwPersonalDetail.robot
Resource          ../kw/kwProductList.robot
Resource          ../kw/kwSearch.robot
Resource          ../kw/kwSelectAddress.robot
Resource          ../kw/kwTVLicence.robot
Resource          ../kw/kwWishlist.robot
Resource          ../kw/kwStartApp.robot
Resource          ../kw/kwAPI.robot
Resource          ../kw/kwAgeVerification.robot
Resource          ../kw/kwConfirmAddress.robot
Resource          ../kw/kwPinDeliveryLocation.robot
Resource          ../kw/kwSelectPickupPoint.robot
Resource          ../kw/kwEarneBucks.robot
Resource          ../kw/kwGift.robot
Resource          ../kw/kwConfirmation.robot
Resource          ../kw/kwPaymentOzow.robot
Resource          ../kw/kwPaymentMobi.robot
Resource          ../kw/kwAPI.robot
Library           TalLibrary
Library           String
Resource          ../kw/kwPaymentEBucks.robot
Resource          ../kw/kwVoucher.robot
Resource          ../kw/kwRegister.robot

*** Variables ***
${PLATFORM_NAME}    ios
${PATH}           /users/jenkins/desktop/shopfront-apps-auto/apps_auto
