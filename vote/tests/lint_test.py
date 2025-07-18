import unittest
import subprocess


class TestCodeStyle(unittest.TestCase):

    def test_flake8(self):
        result = subprocess.run(['flake8', 'vote/'], capture_output=True, text=True)
        self.assertEqual(result.returncode, 0, result.stdout)

