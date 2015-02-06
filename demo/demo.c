/*
 * C: The Complete Reference, 4th Ed. (Paperback)
 * by Herbert Schildt
 *
 * ISBN: 0072121246
 * Publisher: McGraw-Hill Osborne Media; 4 edition (April 26, 2000)
 * */
/* This program displays a binary tree. */

#include <stdlib.h>
#include <stdio.h>

struct tree {
	char info;
	struct tree *left;
	struct tree *right;
};

struct tree *stree(
		struct tree *root,
		struct tree *r,
		char info)
{

	if(!r) {
		r = (struct tree *) malloc(sizeof(struct tree));
		if(!r) {
			printf("Out of Memory\n");
			exit(0);
		}
		r->left = NULL;
		r->right = NULL;
		r->info = info;
		if(!root) return r; /* first entry */
		if(info < root->info) root->left = r;
		else root->right = r;
		return r;
	}

	if(info < r->info)
		stree(r, r->left, info);
	else
		stree(r, r->right, info);

	return root;
}
