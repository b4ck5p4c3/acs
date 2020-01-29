module.exports = data => {

  switch (data) {

    case 'True': return '1';
    case 'False': return '0';
    default: return null;

  }

};
