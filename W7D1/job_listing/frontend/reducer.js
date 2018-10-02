const initialState = {
  city: "Please Select",
  jobs: []
};

const reducer = (state = initialState, action) => {
  // remove this and fill out the body of the reducer function
  switch (action.type) {
    case 'SWITCH LOCATION':
      return {
        city: action.city,
        jobs: action.jobs
      };
    default:
      return state;
  }
};

export default reducer;