if(${input$entity} instanceof LivingEntity)((LivingEntity) ${input$entity}).setHealth(((${input$entity} instanceof LivingEntity)?((LivingEntity) ${input$entity}).getHealth():-1) + ${input$amount}f);
