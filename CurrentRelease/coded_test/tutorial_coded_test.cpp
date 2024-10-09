#include <vunit/vunit.h>
#include "cpptypes.h"

namespace {
class managerFixture : public ::vunit::Fixture {
protected:

  Manager * mgr;

  void SetUp(void) override {
    // Set up code goes here.
    mgr = new Manager();
  }

  void TearDown(void) override {
    // Tear down code goes here.
  }
};
} // namespace

VTEST(managerTests, ExampleTestCase) {
  VASSERT(true);
}

VTEST(managerTests, NothingTest) {
}

VTEST(managerTests, FailingTest) {
  VASSERT_EQ(2, 1);
}

VTEST_F(managerTests, ExampleFixtureTestCase, managerFixture) {
  OrderType Order;
  Order.Entree = Steak;
  mgr->PlaceOrder(1, 1, Order);
  VASSERT_EQ(mgr->GetCheckTotal(1), 14);
}