/***************************************************************************************
 *             _______ _______________________ _______                                 *
 *    |\     /(  ____ (  ____ \__   __(  ___  (  ____ )                                *
 *    | )   ( | (    \| (    \/  ) (  | (   ) | (    )|                                *
 *    | |   | | (__   | |        | |  | |   | | (____)|                                *
 *    ( (   ) |  __)  | |        | |  | |   | |     __)                                *
 *     \ \_/ /| (     | |        | |  | |   | | (\ (                                   *
 *      \   / | (____/| (____/\  | |  | (___) | ) \ \__                                *
 *       \_/  (_______(_______/  )_(  (_______|/   \__/                                *
 *                                                                                     *
 *                 _______ _______ ________________        _______ _______ _______     *
 *                (  ____ (  ___  (  ____ \__   __|\     /(  ___  (  ____ (  ____ \    *
 *                | (    \| (   ) | (    \/  ) (  | )   ( | (   ) | (    )| (    \/    *
 *                | (_____| |   | | (__      | |  | | _ | | (___) | (____)| (__        *
 *                (_____  | |   | |  __)     | |  | |( )| |  ___  |     __|  __)       *
 *                      ) | |   | | (        | |  | || || | (   ) | (\ (  | (          *
 *                /\____) | (___) | )        | |  | () () | )   ( | ) \ \_| (____/\    *
 *                \_______(_______|/         )_(  (_______|/     \|/   \__(_______/    *
 *                                                                                     *
 *                                                                                     *
 *   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   *
 *                                                                                     *
 *                              Vector Software (c) 2017                               *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 * Unit: linked_list.c                                                                 *
 *                                                                                     *
 * Purpose: Provides linked list services                                              *
 *                                                                                     *
 * Public API:                                                                         *
 *      - int RemoveDataItem(struct DataItem * Data)                                   *
 *      - struct DataItem * findData (struct DataItem searchData)                      *
 *      - int InsertDataItem(struct DataItem * Data)                                   *
 *      - void initLinkList(void)                                                      *
 *      - void destroyLinkedList(void)                                                 *
 *                                                                                     *
 * Private API:                                                                        *
 *      - struct Node * findDataNode (struct DataItem * Data)                          *
 *      - struct DataItem * getData(int table)                                         *
 *      - void RemoveAllDataItems(void)                                                *
 *                                                                                     *
 *                                                                                     *
 ***************************************************************************************/

/***************************************************************************************
 *                             System Headers                                          *
 ***************************************************************************************/

#include "ctypes.h"

/***************************************************************************************
 *                             Program Headers                                         *
 ***************************************************************************************/

#include "linked_list.h"

/***************************************************************************************
 *                        Private local variables                                      *
 ***************************************************************************************/

struct Node
{
	struct DataItem Data;
	struct Node *next, *previous; // Pointer to next/previous nodes
};

static struct Node * linkedList, *linkedListEnd ;


/***************************************************************************************
 *                        Private functions                                            *
 ***************************************************************************************/

static struct Node * findDataNode (struct DataItem * Data);
static struct DataItem * getData(int table);
static void RemoveAllDataItems(void);

/**************************************************************************************
 *  Subprogram: RemoveAllDataItems                                                    *
 *                                                                                    * 
 *  Purpose: Removes all the data items in the linked list                            *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - None                                                                       *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
static void RemoveAllDataItems(void)
{
    // loop over the entire linked list
	while (linkedList != NULL)
        
        // remove the current data item
		RemoveDataItem(&linkedList->Data);
}

/**************************************************************************************
 *  Subprogram: initLinkList                                                          *
 *                                                                                    * 
 *  Purpose: Initializes the linked list data                                         *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - None                                                                       *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
void initLinkList(void)
{
    // Initializee the top and bottom of linked list to NULL
	linkedList = linkedListEnd = NULL;
}

/**************************************************************************************
 *  Subprogram: destroyLinkedList                                                     *
 *                                                                                    * 
 *  Purpose: Destroys the linked list by removing all the data items                  *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - None                                                                       *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - None                                                                       *
 *                                                                                    * 
 **************************************************************************************/
void destroyLinkedList(void)
{
    // Remove all data items
	RemoveAllDataItems();
}

/**************************************************************************************
 *  Subprogram: findDataNode                                                          *
 *                                                                                    * 
 *  Purpose: Finds the data node based off the Data.Table number                      *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Data - struct DataItem *                                                   *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - struct Node *                                                              *
 *                                                                                    * 
 **************************************************************************************/
static struct Node * findDataNode (struct DataItem * Data)
{
    // set the search node to the beginning of the linked list
	struct Node * searchNode = linkedList;

    // loop until the linked list is empty
	while (searchNode != NULL)
        // if we found a matching entry
		if (Data->table == searchNode->Data.table)
            // return that entry
			return searchNode;
		else
            // otherwise, traverse the linked list
			searchNode = searchNode->next;

    // return what should be a NULL node
	return searchNode;
}

/**************************************************************************************
 *  Subprogram: getData                                                               *
 *                                                                                    * 
 *  Purpose: Sets the index (Table #) and returns the data from findData              *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - table - int - table number                                                 *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - struct DataItem * - Retrieved data or NULL                                 *
 *                                                                                    * 
 **************************************************************************************/
static struct DataItem * getData(int table)
{
	struct DataItem searchData;

    // setup the table number
	searchData.table = table;
	
    // do the search
	return findData (searchData);
}

/**************************************************************************************
 *  Subprogram: Add_Included_Dessert                                                  *
 *                                                                                    * 
 *  Purpose: Add a free dessert to specific orders based on the                       *
 *           entree, salad, and beverage choice                                       *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Data - struct DataItem*                                                    *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/
int InsertDataItem(struct DataItem * Data)
{
    // allocate a new node
	struct Node * nodeData = (struct Node *) malloc(sizeof(struct Node));
	
    // if we had a memory problem...
	if (nodeData == NULL)
        //return failure
		return FAILURE;
	
    // copy the data into the allocated structure
	memcpy (&nodeData->Data, Data, sizeof(struct DataItem));

    // initialize the linked list pointers
	nodeData->next = NULL;
	nodeData->previous = NULL;

    // if the linked list is empty...
	if (linkedList == NULL)
    {
        // set the points for both beginning and end to the newly allocated data
		linkedList = linkedListEnd = nodeData;
        return SUCCESS;
    }
	else
	{
        // fix up the linked list
        
        // currennt end's next pointer goes to node data
		linkedListEnd->next = nodeData;
        
        // set the allocated data's previous pointer to the linked list end
		nodeData->previous = linkedListEnd;
        
        // set the end pointer to node data
		linkedListEnd = nodeData;
	}
    
    // return success
	return SUCCESS;
}

/**************************************************************************************
 *  Subprogram: RemoveDataItem                                                        *
 *                                                                                    * 
 *  Purpose: Find and remove a data item from the linked list                         * 
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - Data - struct DataItem*                                                    *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - int - SUCCESS/FAILURE                                                      *
 *                                                                                    * 
 **************************************************************************************/
int RemoveDataItem(struct DataItem * Data)
{
    // Find the node
	struct Node * foundNode = findDataNode (Data);

    // If its not found...
	if (foundNode == NULL)
        // return a failure
		return FAILURE;
	else
	{
        // get pointers to previous node and next node
		struct Node * previousNode = foundNode->previous;
		struct Node * nextNode = foundNode->next;

		// if this node was at the end...
		if (foundNode->next == NULL)
            // adjust linkedListEnd to be the previous node
			linkedListEnd = previousNode;

		// if this node was at the beginning
		if (foundNode->previous == NULL)
            // adjust linkedList to be the next node
			linkedList = nextNode;

		// clean up break in the list
        
        // if the previous node wasn't at the beginning
		if (previousNode != NULL)
            // set the previous node to the next node
			previousNode->next = nextNode;
            
        // if the previous node wasn't at the end
		if (nextNode != NULL)
            // set the next node to the next node
			nextNode->previous = previousNode;

		// delete node
		free(foundNode);
	}
    // return success
	return SUCCESS;
}




/**************************************************************************************
 *  Subprogram: findData                                                              *
 *                                                                                    * 
 *  Purpose: Find a specific node in the linked list                                  *
 *                                                                                    * 
 *  Inputs:                                                                           *
 *       - searchData struct DataItem                                                 *
 *                                                                                    * 
 *  Outputs:                                                                          *
 *       - struct DataItem * - NULL = not found                                       *
 *                                                                                    * 
 **************************************************************************************/
struct DataItem * findData (struct DataItem searchData)
{
    // find a node based on input data
	struct Node * foundNode = findDataNode (&searchData);

    // if node not found
	if (foundNode == NULL)
        // return NULL
		return NULL;
	else
        // else return the data in the node
		return &foundNode->Data;
}
