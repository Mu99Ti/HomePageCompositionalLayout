//
//  Model.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/14/23.
//

import Foundation

struct Model: Decodable {
    
    let payload: PayloadModel
    
    struct PayloadModel: Decodable {
        
        let categories: [CategoriesModel]
        let topFreelancers: [TopFreelancersModel]
        let topPackages: [TopPackagesModel]
        
        
        struct CategoriesModel: Decodable {
            
            let id: Int
            let title: String
            let image: ImageModel
        }
        
        struct TopFreelancersModel: Decodable {
            
            let id: Int
            let createdAt: String
            let updatedAt: String
            let firstName: String
            let lastName: String
            let birthDate: String
//            let cityId: Int
            let freelancerId: Int
            let serviceCount: String
            let packageCount: String
//            let avatar: AvatarsModel
        }
        
        struct TopPackagesModel: Decodable {
            
            let id: Int
            let createdAt: String
            let updatedAt: String
            let serviceId: Int
            let title: String
            let description: String
            let deliveryTime: Int
            let deliveryTimeInHour: Int
            let price: String
//            let revisions: Int
            let isActive: Bool
            let items: [String]
//            let rateAverage: String
//            let reviewCount: Int
            let service: ServiceModel
            let deliveryTimeUnit: DeliveryTimeUnitModel
            
            struct ServiceModel: Decodable {
                
                let id: Int
                let createdAt: String
                let updatedAt: String
                let title: String
                let description: String
                let tags: [String]
                let freelancer: FreelancerModel
                let category: CategoryModel
                let reviewCount: Int
                
                
                struct FreelancerModel: Decodable {
                    
                    let id: Int
                    let createdAt: String
                    let updatedAt: String
                    let firstName: String
                    let lastName: String
                    let birthDate: String
                    let bio: String
                    let avatar: AvatarsModel
                }
                
                struct CategoryModel: Decodable {
                    
                    let id: Int
                    let createdAt: String
                    let updatedAt: String
                    let title: String
                    let isActive: Bool
                    let image: ImageModel
                }
            }
            
            struct DeliveryTimeUnitModel: Decodable {
                
                let id: Int
                let createdAt: String
                let updatedAt: String
                let hours: Int
                let isActive: Bool
                let title: String
                
            }
        }
        
        struct AvatarsModel: Decodable {
            
            let id: Int
            let url: String
            let size: Int
        }
        
        struct ImageModel: Decodable {
            
            let id: Int
            let url: String
            let size: Int
        }
    }
}
