data Tree = Leaf Int | Branch Tree Tree

leafCount::Tree->Int
leafCount (Leaf x)		= 1
leafCount (Branch x y)	=(leafCount x) + (leafCount y)

leafList::Tree->[Int]
leafList (Leaf x)=[x]
leafList (Branch x y)=(leafList x)++(leafList y)