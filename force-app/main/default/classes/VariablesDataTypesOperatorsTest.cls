/**
 * The VariablesDataTypesOperatorsTest class is used to test the methods in the VariablesDataTypesOperators class.
 * It contains individual test methods for each method in the class, validating their functionality and expected outcomes.
 * The test methods utilize the Salesforce Assert class to assert and validate the results.
 * The main purpose of this test class is to ensure the accuracy and correctness of the methods in the VariablesDataTypesOperators class.
 */

@IsTest
public class VariablesDataTypesOperatorsTest {

    @IsTest
    static void testAddition() {
        Integer result = VariablesDataTypesOperators.addition(2, 3);
        Assert.areEqual(5, result, 'Incorrect addition result');
        result = VariablesDataTypesOperators.addition(-5, 10);
        Assert.areEqual(5, result, 'Incorrect negative addition result');
        result = VariablesDataTypesOperators.addition(0, 7);
        Assert.areEqual(7, result, 'Incorrect addition with 0 result');
        result = VariablesDataTypesOperators.addition(1000000, 999999);
        Assert.areEqual(1999999, result, 'Incorrect large number addition result');
        result = VariablesDataTypesOperators.addition(null, 5);
        Assert.areEqual(null, result, 'Incorrect null addition result');
    }
    
    @IsTest
    static void testSubtraction() {
        Integer result = VariablesDataTypesOperators.subtraction(10, 5);
        Assert.areEqual(5, result, 'Incorrect subtraction result');
        
        result = VariablesDataTypesOperators.subtraction(-5, -10);
        Assert.areEqual(5, result, 'Incorrect negative subtraction result');
    }
    
    @IsTest
    static void testMultiplication() {
        Integer result = VariablesDataTypesOperators.multiplication(5, 5);
        Assert.areEqual(25, result, 'Incorrect multiplication result');
        
        result = VariablesDataTypesOperators.multiplication(-5, 5);
        Assert.areEqual(-25, result, 'Incorrect negative multiplication result');
    }
    
    @IsTest
    static void testDivision() {
        Decimal result = VariablesDataTypesOperators.division(10, 5);
        Assert.areEqual(2, result, 'Incorrect division result');
        
        result = VariablesDataTypesOperators.division(10, 0);
        Assert.areEqual(0, result, 'Incorrect division by zero result');
    }
    
    @IsTest
    static void testIsEven() {
        Boolean result = VariablesDataTypesOperators.isEven(2);
        Assert.areEqual(true, result, 'Incorrect isEven result');
        
        result = VariablesDataTypesOperators.isEven(9);
        Assert.areEqual(false, result, 'Incorrect isEven result');
    }
    
    @IsTest
    static void testIsPositive() {
        Boolean result = VariablesDataTypesOperators.isPositive(10);
        Assert.areEqual(true, result, 'Incorrect isPositive result');
        
        result = VariablesDataTypesOperators.isPositive(-10);
        Assert.areEqual(false, result, 'Incorrect isPositive result');
    }
    
    @IsTest
    static void testConcatenateStrings() {
        String result = VariablesDataTypesOperators.concatenateStrings('Hello', 'World');
        Assert.areEqual('HelloWorld', result, 'Incorrect concatenateStrings result');
        result = VariablesDataTypesOperators.concatenateStrings('Hello', 'Cloud');
        Assert.areEqual('HelloCloud', result, 'Incorrect concatenateStrings result');
    }
    
    @IsTest
    static void testCreateSentence() {
        // Test with noun 'cat' and verb 'jumping'
        String result = VariablesDataTypesOperators.createSentence('cat', 'jumping', '!');
        Assert.areEqual('The cat is jumping!', result, 'Incorrect createSentence result');
        // Test with noun 'bird' and verb 'flying'
        result = VariablesDataTypesOperators.createSentence('bird', 'flying', '.');
        Assert.areEqual('The bird is flying.', result, 'Incorrect createSentence result');
        // Additional test case with different noun and verb
        result = VariablesDataTypesOperators.createSentence('dog', 'running', '?');
        Assert.areEqual('The dog is running?', result, 'Incorrect createSentence result');
    }
    
    @IsTest
    static void testIsDateInPast() {
        Boolean result = VariablesDataTypesOperators.isDateInPast(Date.today().addDays(-1));
        Assert.areEqual(true, result, 'Incorrect isDateInPast result');
        
        result = VariablesDataTypesOperators.isDateInPast(Date.today().addDays(1));
        Assert.areEqual(false, result, 'Incorrect isDateInPast result');
    }
    
    @IsTest
    static void testIsDateTodayOrFuture() {
        Boolean result = VariablesDataTypesOperators.isDateTodayOrFuture(Date.today().addDays(1));
        Assert.areEqual(true, result, 'Incorrect isDateTodayOrFuture result');
        
        result = VariablesDataTypesOperators.isDateTodayOrFuture(Date.today().addDays(-1));
        Assert.areEqual(false, result, 'Incorrect isDateTodayOrFuture result');
    }
    
    @IsTest
    static void testConvertMinutestoMilliseconds() {
        // Test with a standard scenario
        Integer result = VariablesDataTypesOperators.convertMinutestoMilliseconds(1);
        Assert.areEqual(60000, result, 'Incorrect conversion for 1 minute');
        
        // Test with zero minutes
        result = VariablesDataTypesOperators.convertMinutestoMilliseconds(0);
        Assert.areEqual(0, result, 'Incorrect conversion for 0 minutes');
        
        // Test with multiple minutes
        result = VariablesDataTypesOperators.convertMinutestoMilliseconds(5);
        Assert.areEqual(300000, result, 'Incorrect conversion for 5 minutes');
        
        // Test with a large number of minutes
        result = VariablesDataTypesOperators.convertMinutestoMilliseconds(1000);
        Assert.areEqual(60000000, result, 'Incorrect conversion for 1000 minutes');
    }
    
    @IsTest
    static void testAverageOfThreeNumbers() {
        Double result = VariablesDataTypesOperators.averageOfThreeNumbers(1, 2, 3);
        Assert.areEqual(2.0, result, 'Incorrect averageOfThreeNumbers result');
    }
    
    @IsTest
    static void testAdjustOrderOfOperations1() {
        Assert.areEqual(36, VariablesDataTypesOperators.adjustOrderOfOperations1(5, 7, 3), 'Incorrect result for adjustOrderOfOperations1 with 5, 7, 3 as arguments');
        Assert.areEqual(-8, VariablesDataTypesOperators.adjustOrderOfOperations1(-3, 1, 4), 'Incorrect result for adjustOrderOfOperations1 with -3, 1, 4 as arguments');
        Assert.areEqual(0, VariablesDataTypesOperators.adjustOrderOfOperations1(0, 0, 0), 'Incorrect result for adjustOrderOfOperations1 with 0, 0, 0 as arguments');
    }
    
    @IsTest
    static void testAdjustOrderOfOperations2() {
        Assert.areEqual(8, VariablesDataTypesOperators.adjustOrderOfOperations2(), 'Incorrect result for adjustOrderOfOperations2');
        Assert.areNotEqual(43, VariablesDataTypesOperators.adjustOrderOfOperations2(), 'Incorrect result for adjustOrderOfOperations2');
    }
    
    @IsTest
    static void testComplexOrderOfOperations() {
        // Test Case 1: Example values
        Assert.areEqual(4.5, MathOperationsUtil.complexOrderOfOperations(new MathOperands(1, 2, 3, 4, 5)),
        'Incorrect result for operands (1, 2, 3, 4, 5)');
        
        // Test Case 2: Positive integers
        Assert.areEqual(4.2, MathOperationsUtil.complexOrderOfOperations(new MathOperands(2, 3, 4, 5, 6)),
        'Incorrect result for operands (2, 3, 4, 5, 6)');
        
        // Test Case 3: Negative integers
        Assert.areEqual(-1.2, MathOperationsUtil.complexOrderOfOperations(new MathOperands(-2, 3, -4, 5, 6)),
        'Incorrect result for operands (-2, 3, -4, 5, 6)');
        
        // Test Case 4: Zero as an operand
        Assert.areEqual(6.0, MathOperationsUtil.complexOrderOfOperations(new MathOperands(0, 3, 4, 2, 8)),
        'Incorrect result for operands (0, 3, 4, 2, 8)');
        
        // Test Case 5: All zeros
        Assert.areEqual(0.0, MathOperationsUtil.complexOrderOfOperations(new MathOperands(0, 0, 0, 1, 0)),
        'Incorrect result for operands (0, 0, 0, 1, 0)');
    }
    
    @IsTest
    static void testConvertFahrenheitToCelsius() {
        // Test case for boiling point of water
        Assert.areEqual((Double)100.0, VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)212.0),
        'Incorrect conversion from 212°F to Celsius');
        
        // Test case for freezing point of water
        Assert.areEqual((Double)0.0, VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)32.0),
        'Incorrect conversion from 32°F to Celsius');
        
        // Test case for 0°F
        Assert.areEqual((Double)(-17.8), Decimal.valueOf(VariablesDataTypesOperators.convertFahrenheitToCelsius((Double)0.0)).setScale(1),
        'Incorrect conversion from 0°F to Celsius');
    }
    
    @IsTest
    static void testPerformDivisionAndCast() {
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast(5.0, 2.0), 'Incorrect division result when rounding down is correct');
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast(5.5, 2.0), 'Incorrect division result when rounding up is correct');
        Assert.areEqual(2, VariablesDataTypesOperators.performDivisionAndCast(4.0, 2.0), 'Incorrect division result when exact division is performed');
    }
    
    @IsTest
    static void testCalculateWeeklyPaycheck() {
        Assert.areEqual(Decimal.valueOf(400.0), VariablesDataTypesOperators.calculateWeeklyPaycheck(Decimal.valueOf(10.0), 40.0), 'Incorrect weekly paycheck for 10.0 rate and 40.0 hours');
        Assert.areEqual(Decimal.valueOf(0.0), VariablesDataTypesOperators.calculateWeeklyPaycheck(Decimal.valueOf(0.0), 40.0), 'Incorrect weekly paycheck for 0.0 rate and 40.0 hours');
    }
    
    
    @IsTest
    static void testCalculateMonthlyPaycheck() {
        Assert.areEqual(Decimal.valueOf(1600.0), VariablesDataTypesOperators.calculateMonthlyPaycheck(Decimal.valueOf(10.0), 40.0), 'Incorrect monthly paycheck for 10.0 rate and 40.0 hours');
        Assert.areEqual(Decimal.valueOf(0.0), VariablesDataTypesOperators.calculateMonthlyPaycheck(Decimal.valueOf(0.0), 40.0), 'Incorrect monthly paycheck for 0.0 rate and 40.0 hours');
    }

    @IsTest
    static void testCalculateTotalCost() {
        // Test with standard inputs
        Decimal result = VariablesDataTypesOperators.calculateTotalCost(1.0, 2, 0.05);
        Assert.areEqual(2.1, result, 'Incorrect total cost for price 1.0, units 2, and tax 0.05');
        
        // Test with zero sales tax
        result = VariablesDataTypesOperators.calculateTotalCost(10.0, 5, 0.0);
        Assert.areEqual(50.0, result, 'Incorrect total cost for price 10.0, units 5, and tax 0.0');
        
        // Test with no units
        result = VariablesDataTypesOperators.calculateTotalCost(15.0, 0, 0.08);
        Assert.areEqual(0.0, result, 'Incorrect total cost for price 15.0, units 0, and tax 0.08');
        
        // Test with a higher sales tax
        result = VariablesDataTypesOperators.calculateTotalCost(100.0, 1, 0.10);
        Assert.areEqual(110.0, result, 'Incorrect total cost for price 100.0, units 1, and tax 0.10');
        
        // Test with null inputs
        result = VariablesDataTypesOperators.calculateTotalCost(null, 2, 0.05);
        Assert.areEqual(null, result, 'Expected null result when pricePerUnit is null');
        
        result = VariablesDataTypesOperators.calculateTotalCost(1.0, null, 0.05);
        Assert.areEqual(null, result, 'Expected null result when numberOfUnits is null');
        
        result = VariablesDataTypesOperators.calculateTotalCost(1.0, 2, null);
        Assert.areEqual(null, result, 'Expected null result when salesTaxRate is null');
    }
}