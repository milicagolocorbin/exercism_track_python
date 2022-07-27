import unittest

from hello_world import hello


class TestHelloWorld(unittest.TestCase):

    def test_greeting(self):
        self.assertEqual(hello(), "Hello, World!")


if __name__ == "__main__":
    unittest.main()
