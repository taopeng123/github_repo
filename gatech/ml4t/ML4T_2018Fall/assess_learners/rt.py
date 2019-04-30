"""  		   	  			    		  		  		    	 		 		   		 		  
A simple wrapper for linear regression.  (c) 2015 Tucker Balch  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
Copyright 2018, Georgia Institute of Technology (Georgia Tech)  		   	  			    		  		  		    	 		 		   		 		  
Atlanta, Georgia 30332  		   	  			    		  		  		    	 		 		   		 		  
All Rights Reserved  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
Template code for CS 4646/7646  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
Georgia Tech asserts copyright ownership of this template and all derivative  		   	  			    		  		  		    	 		 		   		 		  
works, including solutions to the projects assigned in this course. Students  		   	  			    		  		  		    	 		 		   		 		  
and other users of this template code are advised not to share it with others  		   	  			    		  		  		    	 		 		   		 		  
or to make it available on publicly viewable websites including repositories  		   	  			    		  		  		    	 		 		   		 		  
such as github and gitlab.  This copyright statement should not be removed  		   	  			    		  		  		    	 		 		   		 		  
or edited.  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
We do grant permission to share solutions privately with non-students such  		   	  			    		  		  		    	 		 		   		 		  
as potential employers. However, sharing with other current or future  		   	  			    		  		  		    	 		 		   		 		  
students of CS 7646 is prohibited and subject to being investigated as a  		   	  			    		  		  		    	 		 		   		 		  
GT honor code violation.  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
-----do not edit anything above this line---  		   	  			    		  		  		    	 		 		   		 		  
"""  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
import numpy as np  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
class RTLearner(object):  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
    def __init__(self, leaf_size, verbose = False):  		   	  			    		  		  		    	 		 		   		 		  
        #pass # move along, these aren't the drones you're looking for 
        self.leaf_size = leaf_size
        self.verbose = verbose
        self.model_coefs = []         		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
    def author(self):  		   	  			    		  		  		    	 		 		   		 		  
        return 'tpeng38' # replace tb34 with your Georgia Tech username  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
    def addEvidence(self,dataX,dataY):  		   	  			    		  		  		    	 		 		   		 		  
        """  		   	  			    		  		  		    	 		 		   		 		  
        @summary: Add training data to learner  		   	  			    		  		  		    	 		 		   		 		  
        @param dataX: X values of data to add  		   	  			    		  		  		    	 		 		   		 		  
        @param dataY: the Y training values  		   	  			    		  		  		    	 		 		   		 		  
        """  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
        # slap on 1s column so linear regression finds a constant term  		   	  			    		  		  		    	 		 		   		 		  
        #newdataX = np.ones([dataX.shape[0],dataX.shape[1]+1])  		   	  			    		  		  		    	 		 		   		 		  
        #newdataX[:,0:dataX.shape[1]]=dataX  		   	  			    		  		  		    	 		 		   		 		  
  		   	  			    		  		  		    	 		 		   		 		  
        # build and save the model  		   	  			    		  		  		    	 		 		   		 		  
        #self.model_coefs, residuals, rank, s = np.linalg.lstsq(newdataX, dataY)  		   	  			    		  		  		    	 		 		   		 		  
        dataY = dataY[:, None]
        data =  np.concatenate((dataX, dataY), axis=1)
        # build and save the model
        self.model_coefs = self.construct(data)

    def construct(self,df):
        if np.unique(df[:,-1]).shape[0] == 1:
            return np.array([["leaf", np.unique(df[:,-1])[0], "na", "na"]], dtype = object)      
        if df.shape[0] <= self.leaf_size:
            return np.array([["leaf", np.mean(df[:,-1]), "na", "na"]], dtype = object)
        else:
            col = np.random.randint(df[:,0:-1].shape[1])
            row1 = np.random.randint(df.shape[0])
            row2 = np.random.randint(df.shape[0])
            cut = (df[row1, col] + df[row2, col]) / 2
            data_cut = df[df[:, col] <= cut]
            if np.array_equal(data_cut, df) == True:
                return np.array([["leaf", np.mean(df[:,-1]), "na", "na"]], dtype = object)

            righttree = self.construct(df[df[:, col] > cut])
            lefttree = self.construct(data_cut)
            leftnum = lefttree.shape[0]
            root = np.array([[col, cut, 1, leftnum + 1]], dtype = object)
            return(np.concatenate((root, lefttree, righttree), axis=0))

    def dfs(self, p, i):
        n = self.model_coefs[i, :]
        if n[0] == 'leaf':
            self.Y.append(n[1])
            pass
        elif p[n[0]] <= n[1]:
            self.dfs(p,i + n[2])            
        elif p[n[0]] > n[1]:
            self.dfs(p,i + n[3])

    def query(self,points):  		   	  			    		  		  		    	 		 		   		 		  
        """  		   	  			    		  		  		    	 		 		   		 		  
        @summary: Estimate a set of test points given the model we built.  		   	  			    		  		  		    	 		 		   		 		  
        @param points: should be a numpy array with each row corresponding to a specific query.  		   	  			    		  		  		    	 		 		   		 		  
        @returns the estimated values according to the saved model.  		   	  			    		  		  		    	 		 		   		 		  
        """  		   	  			    		  		  		    	 		 		   		 		  
        #return (self.model_coefs[:-1] * points).sum(axis = 1) + self.model_coefs[-1]  		   	  			    		  		  		    	 		 		   		 		  
 
        self.Y = []
        for i in range(points.shape[0]):
            self.dfs(points[i], 0)
        return np.array(self.Y)

if __name__=="__main__":  		   	  			    		  		  		    	 		 		   		 		  
    print "the secret clue is 'zzyzx'"  		   	  			    		  		  		    	 		 		   		 		  
