import React from 'react';
import {PacmanLoader} from 'react-spinners';


const BounceLoading = (state) => {
  return (
    <div className="spinner">
      <PacmanLoader
        color={"#BB94A8"}
        loading={state.loading}
        />
    </div>
  )
}

export default BounceLoading;
