function getParameterByNameOverride(url,parameter){
        if(url.indexOf(parameter)>0){
            let parameterString = url.substring(url.indexOf(parameter)+parameter.length+1);
            let parameter = parameterString.substring(0,parameterString.indexOf('&'));
            return parameter;
        }
        return '';
    }