## Set up arg parser
import argpase

parser = argparse.ArgumentParser(description='Description')
parser.add_argument('arg1', nargs=1, help='Unnamed argument')
parser.add_argument( '-a', nargs=1, default=[-1], help='One arg')

args = parser.parse_args()
ARG1 = args.arg1[0] # args.arg1 returns a list; select first element
A = args.a[0]
