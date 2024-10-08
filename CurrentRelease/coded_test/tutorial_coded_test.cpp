#include <vunit/vunit.h>
namespace {
class managerFixture : public ::vunit::Fixture {
protected:
  void SetUp(void) override {
    // Set up code goes here.
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
  VASSERT_EQ(2, 1+1);
}